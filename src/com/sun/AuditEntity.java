package com.sun;

import javax.persistence.*;

@Entity
@Table(name = "audit", schema = "meetingroom", catalog = "")
public class AuditEntity {
    private int auditId;
    private String auditName;
    private String auditTele;
    private String auditEmail;

    @Id
    @Column(name = "audit_id", nullable = false)
    public int getAuditId() {
        return auditId;
    }

    public void setAuditId(int auditId) {
        this.auditId = auditId;
    }

    @Basic
    @Column(name = "audit_name", nullable = true, length = 128)
    public String getAuditName() {
        return auditName;
    }

    public void setAuditName(String auditName) {
        this.auditName = auditName;
    }

    @Basic
    @Column(name = "audit_tele", nullable = true, length = 128)
    public String getAuditTele() {
        return auditTele;
    }

    public void setAuditTele(String auditTele) {
        this.auditTele = auditTele;
    }

    @Basic
    @Column(name = "audit_email", nullable = true, length = 128)
    public String getAuditEmail() {
        return auditEmail;
    }

    public void setAuditEmail(String auditEmail) {
        this.auditEmail = auditEmail;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;

        AuditEntity that = (AuditEntity) o;

        if (auditId != that.auditId) return false;
        if (auditName != null ? !auditName.equals(that.auditName) : that.auditName != null) return false;
        if (auditTele != null ? !auditTele.equals(that.auditTele) : that.auditTele != null) return false;
        if (auditEmail != null ? !auditEmail.equals(that.auditEmail) : that.auditEmail != null) return false;

        return true;
    }

    @Override
    public int hashCode() {
        int result = auditId;
        result = 31 * result + (auditName != null ? auditName.hashCode() : 0);
        result = 31 * result + (auditTele != null ? auditTele.hashCode() : 0);
        result = 31 * result + (auditEmail != null ? auditEmail.hashCode() : 0);
        return result;
    }
}
