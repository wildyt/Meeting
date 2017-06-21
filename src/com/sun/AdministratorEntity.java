package com.sun;

import javax.persistence.*;

@Entity
@Table(name = "administrator", schema = "meetingroom", catalog = "")
public class AdministratorEntity {
    private int admId;
    private String admName;

    @Id
    @Column(name = "adm_id", nullable = false)
    public int getAdmId() {
        return admId;
    }

    public void setAdmId(int admId) {
        this.admId = admId;
    }

    @Basic
    @Column(name = "adm_name", nullable = true, length = 128)
    public String getAdmName() {
        return admName;
    }

    public void setAdmName(String admName) {
        this.admName = admName;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;

        AdministratorEntity that = (AdministratorEntity) o;

        if (admId != that.admId) return false;
        if (admName != null ? !admName.equals(that.admName) : that.admName != null) return false;

        return true;
    }

    @Override
    public int hashCode() {
        int result = admId;
        result = 31 * result + (admName != null ? admName.hashCode() : 0);
        return result;
    }
}
