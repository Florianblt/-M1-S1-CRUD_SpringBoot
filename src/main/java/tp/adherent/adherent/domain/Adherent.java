package tp.adherent.adherent.domain;


import com.fasterxml.jackson.annotation.JsonIgnoreProperties;
import org.hibernate.validator.constraints.NotBlank;
import org.springframework.data.jpa.domain.support.AuditingEntityListener;

import javax.persistence.*;


@Entity
@Table(name = "Adherent")
@EntityListeners(AuditingEntityListener.class)
@JsonIgnoreProperties(value = {"createdAt", "updatedAt"}, allowGetters = true)
public class Adherent {
    @Id @GeneratedValue
    @Column (name = "id")
    private int id;

    @Column (name = "firstName")
    @NotBlank
    private String firstName;

    @Column (name = "lastName")
    @NotBlank
    private String lastName;

    @Column (name = "dateSubscription")
    @NotBlank
    private String dateSubscription;

    @Column (name = "dateBirth")
    @NotBlank
    private String dateBirth;

    @Column (name = "email")
    @NotBlank
    private String email;

    @Column (name = "hasPaid")
    @NotBlank
    private boolean hasPaid;

    @Column (name="cooptation")
    @NotBlank
    private int cooptation;

    public Adherent() {
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getFirstName() {
        return firstName;
    }

    public void setFirstName(String firstName) {
        this.firstName = firstName;
    }

    public String getLastName() {
        return lastName;
    }

    public void setLastName(String lastName) {
        this.lastName = lastName;
    }

    public String getDateSubscription() {
        return dateSubscription;
    }

    public void setDateSubscription(String dateSubscription) {
        this.dateSubscription = dateSubscription;
    }

    public String getDateBirth() {
        return dateBirth;
    }

    public void setDateBirth(String dateBirth) {
        this.dateBirth = dateBirth;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public boolean isHasPaid() {
        return hasPaid;
    }

    public void setHasPaid(boolean hasPaid) {
        this.hasPaid = hasPaid;
    }

    public int getCooptation() {
        return cooptation;
    }

    public void setCooptation(int cooptation) {
        this.cooptation = cooptation;
    }
}
