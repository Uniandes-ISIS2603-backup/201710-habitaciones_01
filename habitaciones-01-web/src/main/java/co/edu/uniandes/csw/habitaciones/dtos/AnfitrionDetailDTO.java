/* 
 * Copyright (C) 2017 c.penaloza.
 *
 * This library is free software; you can redistribute it and/or
 * modify it under the terms of the GNU Lesser General Public
 * License as published by the Free Software Foundation; either
 * version 2.1 of the License, or (at your option) any later version.
 *
 * This library is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
 * Lesser General Public License for more details.
 *
 * You should have received a copy of the GNU Lesser General Public
 * License along with this library; if not, write to the Free Software
 * Foundation, Inc., 51 Franklin Street, Fifth Floor, Boston,
 * MA 02110-1301  USA
 */
package co.edu.uniandes.csw.habitaciones.dtos;

import co.edu.uniandes.csw.habitaciones.entities.AnfitrionEntity;
import co.edu.uniandes.csw.habitaciones.entities.ViviendaEntity;
import java.util.ArrayList;
import java.util.List;
import javax.xml.bind.annotation.XmlRootElement;

@XmlRootElement
public class AnfitrionDetailDTO extends AnfitrionDTO{
    
    private static final long serialVersionUID = 1L;
    
    private List<ViviendaDetailDTO> viviendas;
    
    public AnfitrionDetailDTO(){
        super();
    }
    
    public AnfitrionDetailDTO(AnfitrionEntity entity){
        super(entity);
        if(entity!=null){  
        if(entity.getViviendas()!=null){
            this.viviendas=new ArrayList();
            for(ViviendaEntity vivienda:entity.getViviendas())
            {   
                this.viviendas.add(new ViviendaDetailDTO(vivienda));
            }
        }
        }
    }
    
    @Override
    public AnfitrionEntity toEntity(){
        AnfitrionEntity entity=new AnfitrionEntity();
        entity.setNumeroID(this.getNumeroID());
        entity.setTipoID(this.getTipoID());
        entity.setNombre(this.getNombre());
        entity.setUsuario(this.getUsuario());
        entity.setContrasenha(this.getContrasenha());
        entity.setCorreo(this.getCorreo());
        entity.setDireccion(this.getDireccion());
        entity.setTelefono(this.getTelefono());
        entity.setNumeroTarjeta(this.getNumeroTarjeta());
        entity.setPuntuacion(this.getPuntuacion());
        
        if(this.getViviendas()!=null){    
            entity.setViviendas(new ArrayList());
            List<ViviendaEntity> entities=entity.getViviendas();
            for(ViviendaDetailDTO vivienda:this.getViviendas())
            {
                entities.add(vivienda.toEntity());
            }
        }
        return entity;
    }

    public List<ViviendaDetailDTO> getViviendas() {
        return viviendas;
    }

    public void setViviendas(List<ViviendaDetailDTO> viviendas) {
        this.viviendas = viviendas;
    }
}
