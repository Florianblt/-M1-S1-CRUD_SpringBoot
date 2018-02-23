package tp.adherent.adherent.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import tp.adherent.adherent.dao.AdherentDAO;
import tp.adherent.adherent.domain.Adherent;
import tp.adherent.adherent.repository.AdherentRepository;

@Service
public class AdherentService {

    @Autowired
    private AdherentDAO adherentDAO;

    @Autowired
    private AdherentRepository adherentRepository;

    public Object findAll(){
        return adherentRepository.findAll();
    }

    public Adherent findById(Long id){
        return adherentRepository.findOne(id);
    }

    public Adherent save(Adherent person){
        return adherentRepository.save(person);
    }
}
