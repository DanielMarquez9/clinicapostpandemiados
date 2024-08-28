package com.example.clinicapostpandemia.service;

import com.example.clinicapostpandemia.model.Paciente;

import java.util.List;

public interface PacienteService {
    List<Paciente> listarTodos();
    Paciente guardar(Paciente paciente);
    Paciente obtenerPorId(Long id);
    void eliminar(Long id);
}
