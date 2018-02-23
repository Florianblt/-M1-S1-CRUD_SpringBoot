package tp.adherent.adherent.repository;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;
import tp.adherent.adherent.domain.Adherent;

@Repository
public interface AdherentRepository extends CrudRepository<Adherent,Long> {
}
