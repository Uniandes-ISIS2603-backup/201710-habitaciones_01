/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package co.edu.uniandes.csw.habitaciones.dtos;

import co.edu.uniandes.csw.habitaciones.entities.HabitacionEntity;
import co.edu.uniandes.csw.habitaciones.entities.ReservaEntity;
import java.util.ArrayList;
import java.util.List;
import javax.xml.bind.annotation.XmlRootElement;

/**
 *
 * @author l.maya10
 */
@XmlRootElement
public class HabitacionDetailDTO extends HabitacionDTO {
    
    private List<ReservaDTO> reservas;
    private ViviendaDTO idVivienda;
    
    public HabitacionDetailDTO()
    {      
        super();
    }
    
    public HabitacionDetailDTO(HabitacionEntity entity)
    {      
        super(entity);
        if(entity!=null){
        if(entity.getReservas()!=null){
            this.reservas=new ArrayList();
            for(ReservaEntity reserva:entity.getReservas())
            {   
                this.reservas.add(new ReservaDTO(reserva));
            }
        }
        this.idVivienda = new ViviendaDTO(entity.getIdVivienda());
        }
    }
    
    @Override
    public HabitacionEntity toEntity()
    {
        HabitacionEntity entity = new HabitacionEntity();
        entity.setId(this.getId());
        entity.setArea(this.getArea());
        entity.setCapacidad(this.getCapacidad());
        entity.setDescripcion(this.getDescripcion());
        entity.setValorDiario(this.getValorDiario());
        entity.setImagen(this.getImagen());
        entity.setIdVivienda(this.idVivienda.toEntity());
        if(this.getReservas()!=null){
            entity.setReservas(new ArrayList());
            List<ReservaEntity> entities0=entity.getReservas();
            for(ReservaDTO reserva:this.getReservas())
            {
                entities0.add(reserva.toEntity());
            }
        }
        return entity;
    }

    public List<ReservaDTO> getReservas() {
        return reservas;
    }

    public void setReservas(List<ReservaDTO> reservas) {
        this.reservas = reservas;
    }

    public ViviendaDTO getIdVivienda() {
        return idVivienda;
    }

    public void setIdVivienda(ViviendaDTO idVivienda) {
        this.idVivienda = idVivienda;
    }
    
    
}
