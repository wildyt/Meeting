package com.sun;

import javax.persistence.*;

@Entity
@Table(name = "meeting_relation_staff", schema = "meetingroom", catalog = "")
public class MeetingRelationStaffEntity {
    private int id;
    private Integer staffId;
    private Integer meetingId;

    @Id
    @Column(name = "ID", nullable = false)
    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    @Basic
    @Column(name = "staff_id", nullable = true)
    public Integer getStaffId() {
        return staffId;
    }

    public void setStaffId(Integer staffId) {
        this.staffId = staffId;
    }

    @Basic
    @Column(name = "meeting_id", nullable = true)
    public Integer getMeetingId() {
        return meetingId;
    }

    public void setMeetingId(Integer meetingId) {
        this.meetingId = meetingId;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;

        MeetingRelationStaffEntity that = (MeetingRelationStaffEntity) o;

        if (id != that.id) return false;
        if (staffId != null ? !staffId.equals(that.staffId) : that.staffId != null) return false;
        if (meetingId != null ? !meetingId.equals(that.meetingId) : that.meetingId != null) return false;

        return true;
    }

    @Override
    public int hashCode() {
        int result = id;
        result = 31 * result + (staffId != null ? staffId.hashCode() : 0);
        result = 31 * result + (meetingId != null ? meetingId.hashCode() : 0);
        return result;
    }
}
