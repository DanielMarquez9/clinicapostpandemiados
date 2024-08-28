package com.example.clinicapostpandemia.controller;

import com.example.clinicapostpandemia.model.Paciente;
import com.example.clinicapostpandemia.service.PacienteService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

@Controller
@RequestMapping("/pacientes")
public class PacienteController {

    @Autowired
    private PacienteService pacienteService;

    @GetMapping
    public String listarPacientes(Model model) {
        model.addAttribute("pacientes", pacienteService.listarTodos());
        return "pacientes/list";
    }

    @GetMapping("/nuevo")
    public String mostrarFormularioDeRegistro(Model model) {
        model.addAttribute("paciente", new Paciente());
        return "pacientes/form";
    }

    @PostMapping
    public String guardarPaciente(@ModelAttribute("paciente") Paciente paciente) {
        pacienteService.guardar(paciente);
        return "redirect:/pacientes";
    }

    @GetMapping("/editar/{id}")
    public String mostrarFormularioDeEdicion(@PathVariable Long id, Model model) {
        Paciente paciente = pacienteService.obtenerPorId(id);
        model.addAttribute("paciente", paciente);
        return "pacientes/form";
    }

    @PostMapping("/{id}")
    public String actualizarPaciente(@PathVariable Long id, @ModelAttribute("paciente") Paciente paciente) {
        pacienteService.guardar(paciente);
        return "redirect:/pacientes";
    }

    @GetMapping("/eliminar/{id}")
    public String eliminarPaciente(@PathVariable Long id) {
        pacienteService.eliminar(id);
        return "redirect:/pacientes";
    }
}
