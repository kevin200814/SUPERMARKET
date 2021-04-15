using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Descripción breve de PERSONA_BLL
/// </summary>
public class PERSONA_BLL
{
    public PERSONA_BLL()
    {
        //
        // TODO: Agregar aquí la lógica del constructor
        //
    }

    static MARKET_DSTableAdapters.PERSONATableAdapter adto = new MARKET_DSTableAdapters.PERSONATableAdapter();

    public static List<PERSONA_DTO> MostrarTodos()
    {
        List<PERSONA_DTO> mostraroles = new List<PERSONA_DTO>();
        
        MARKET_DS.PERSONADataTable tabla = adto.MostrarTodoPersona();
        foreach (MARKET_DS.PERSONARow fila in tabla)
        {
            mostraroles.Add(filaSDTO(fila));
        }
        return mostraroles;
    }

    private static PERSONA_DTO filaSDTO(MARKET_DS.PERSONARow fila)
    {
        PERSONA_DTO objTprod = new PERSONA_DTO();
        objTprod.ID_PERSONA = fila.ID_PERSONA;
        objTprod.PRIMER_NOMBRE_PERSONA = fila.PRIMER_NOMBRE_PERSONA;
        objTprod.SEGUNDO_NOMBRE_PERSONA = fila.SEGUNDO_NOMBRE_PERSONA;
        objTprod.PRIMER_APELLIDO_PERSONA = fila.PRIMER_APELLIDO_PERSONA;
        objTprod.SEGUNDO_APELLIDO_PERSONA = fila.SEGUNDO_APELLIDO_PERSONA;
        objTprod.FECHA_NACIMIENTO_PERSONA = fila.FECHA_NACIMIENTO_PERSONA;
        objTprod.NUMERO_IDENTIDAD_PERSONA = fila.NUMERO_IDENTIDAD_PERSONA;
        objTprod.DIRECCION_RESIDENCIA_PERSONA = fila.DIRECCION_RESIDENCIA_PERSONA;
        objTprod.ID_CIUDAD_RESIDENCIA_PERSONA = fila.ID_CIUDAD_RESIDENCIA_PERSONA;
        objTprod.ID_SEXO_PERSONA = fila.ID_SEXO_PERSONA;


        return objTprod;
    }

    public static PERSONA_DTO MostrarID(int ID_PERSONA)
    {
        MARKET_DS.PERSONADataTable tabla = adto.MostrarPersonaID(ID_PERSONA);
        if (tabla.Rows.Count == 0)
        {
            return null;
        }

        return filaSDTO(tabla[0]);
    }

    public static void Insertar(int ID_PERSONA, string PRIMER_NOMBRE_PERSONA, string SEGUNDO_NOMBRE_PERSONA, string PRIMER_APELLIDO_PERSONA, 
        string SEGUNDO_APELLIDO_PERSONA, DateTime FECHA_NACIMIENTO_PERSONA, string NUMERO_IDENTIDAD_PERSONA, string DIRECCION_RESIDENCIA_PERSONA,
        int ID_CIUDAD_RESIDENCIA_PERSONA, int ID_SEXO_PERSONA)
    {
        adto.Insert(ID_PERSONA, PRIMER_NOMBRE_PERSONA, SEGUNDO_NOMBRE_PERSONA, PRIMER_APELLIDO_PERSONA,
        SEGUNDO_APELLIDO_PERSONA, FECHA_NACIMIENTO_PERSONA, NUMERO_IDENTIDAD_PERSONA, DIRECCION_RESIDENCIA_PERSONA,
        ID_CIUDAD_RESIDENCIA_PERSONA, ID_SEXO_PERSONA);
    }

    public static void Borrar(int ID_PERSONA)
    {
        adto.Delete(ID_PERSONA);
    }

    public static void Actualizar(int ID_PERSONA, string PRIMER_NOMBRE_PERSONA, string SEGUNDO_NOMBRE_PERSONA, string PRIMER_APELLIDO_PERSONA, 
        string SEGUNDO_APELLIDO_PERSONA, DateTime FECHA_NACIMIENTO_PERSONA, string NUMERO_IDENTIDAD_PERSONA, string DIRECCION_RESIDENCIA_PERSONA,
        int ID_CIUDAD_RESIDENCIA_PERSONA, int ID_SEXO_PERSONA)
    {
        adto.Update(PRIMER_NOMBRE_PERSONA, SEGUNDO_NOMBRE_PERSONA, PRIMER_APELLIDO_PERSONA,
        SEGUNDO_APELLIDO_PERSONA, FECHA_NACIMIENTO_PERSONA, NUMERO_IDENTIDAD_PERSONA, DIRECCION_RESIDENCIA_PERSONA,
        ID_CIUDAD_RESIDENCIA_PERSONA, ID_SEXO_PERSONA, ID_PERSONA);
    }

}