package com.sun;

import javax.persistence.*;
import java.sql.Timestamp;

@Entity
@Table(name = "meeting", schema = "meetingroom", catalog = "")
public class MeetingEntity {
    private int meetingId;
    private String meetingName;
    private Integer peopleNum;
    private Timestamp startTime;
    private Timestamp endTime;
    private String meetingNotes;
    private Integer meetingroomId;

    @Id
    @Column(name = "meeting_id", nullable = false)
    public int getMeetingId() {
        return meetingId;
    }

    public void setMeetingId(int meetingId) {
        this.meetingId = meetingId;
    }

    @Basic
    @Column(name = "meeting_name", nullable = true, length = 128)
    public String getMeetingName() {
        return meetingName;
    }

    public void setMeetingName(String meetingName) {
        this.meetingName = meetingName;
    }

    @Basic
    @Column(name = "people_num", nullable = true)
    public Integer getPeopleNum() {
        return peopleNum;
    }

    public void setPeopleNum(Integer peopleNum) {
        this.peopleNum = peopleNum;
    }

    @Basic
    @Column(name = "start_time", nullable = true)
    public Timestamp getStartTime() {
        return startTime;
    }

    public void setStartTime(Timestamp startTime) {
        this.startTime = startTime;
    }

    @Basic
    @Column(name = "end_time", nullable = true)
    public Timestamp getEndTime() {
        return endTime;
    }

    public void setEndTime(Timestamp endTime) {
        this.endTime = endTime;
    }

    @Basic
    @Column(name = "meeting notes", nullable = true, length = 128)
    public String getMeetingNotes() {
        return meetingNotes;
    }

    public void setMeetingNotes(String meetingNotes) {
        this.meetingNotes = meetingNotes;
    }

    @Basic
    @Column(name = "meetingroom_id", nullable = true)
    public Integer getMeetingroomId() {
        return meetingroomId;
    }

    public void setMeetingroomId(Integer meetingroomId) {
        this.meetingroomId = meetingroomId;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;

        MeetingEntity that = (MeetingEntity) o;

        if (meetingId != that.meetingId) return false;
        if (meetingName != null ? !meetingName.equals(that.meetingName) : that.meetingName != null) return false;
        if (peopleNum != null ? !peopleNum.equals(that.peopleNum) : that.peopleNum != null) return false;
        if (startTime != null ? !startTime.equals(that.startTime) : that.startTime != null) return false;
        if (endTime != null ? !endTime.equals(that.endTime) : that.endTime != null) return false;
        if (meetingNotes != null ? !meetingNotes.equals(that.meetingNotes) : that.meetingNotes != null) return false;
        if (meetingroomId != null ? !meetingroomId.equals(that.meetingroomId) : that.meetingroomId != null)
            return false;

        return true;
    }

    @Override
    public int hashCode() {
        int result = meetingId;
        result = 31 * result + (meetingName != null ? meetingName.hashCode() : 0);
        result = 31 * result + (peopleNum != null ? peopleNum.hashCode() : 0);
        result = 31 * result + (startTime != null ? startTime.hashCode() : 0);
        result = 31 * result + (endTime != null ? endTime.hashCode() : 0);
        result = 31 * result + (meetingNotes != null ? meetingNotes.hashCode() : 0);
        result = 31 * result + (meetingroomId != null ? meetingroomId.hashCode() : 0);
        return result;
    }
}
