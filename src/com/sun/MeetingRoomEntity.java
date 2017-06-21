package com.sun;

import javax.persistence.*;

@Entity
@Table(name = "meeting_room", schema = "meetingroom", catalog = "")
public class MeetingRoomEntity {
    private int meetingRoomId;
    private String meetingRoomName;
    private Long capacity;
    private String roomNumbler;
    private String remark;
    private String currentAtate;

    @Id
    @Column(name = "meeting_room_id", nullable = false)
    public int getMeetingRoomId() {
        return meetingRoomId;
    }

    public void setMeetingRoomId(int meetingRoomId) {
        this.meetingRoomId = meetingRoomId;
    }

    @Basic
    @Column(name = "meeting_room_name", nullable = true, length = 128)
    public String getMeetingRoomName() {
        return meetingRoomName;
    }

    public void setMeetingRoomName(String meetingRoomName) {
        this.meetingRoomName = meetingRoomName;
    }

    @Basic
    @Column(name = "capacity", nullable = true)
    public Long getCapacity() {
        return capacity;
    }

    public void setCapacity(Long capacity) {
        this.capacity = capacity;
    }

    @Basic
    @Column(name = "room_numbler", nullable = true, length = 128)
    public String getRoomNumbler() {
        return roomNumbler;
    }

    public void setRoomNumbler(String roomNumbler) {
        this.roomNumbler = roomNumbler;
    }

    @Basic
    @Column(name = "remark", nullable = true, length = -1)
    public String getRemark() {
        return remark;
    }

    public void setRemark(String remark) {
        this.remark = remark;
    }

    @Basic
    @Column(name = "current_atate", nullable = true, length = 128)
    public String getCurrentAtate() {
        return currentAtate;
    }

    public void setCurrentAtate(String currentAtate) {
        this.currentAtate = currentAtate;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;

        MeetingRoomEntity that = (MeetingRoomEntity) o;

        if (meetingRoomId != that.meetingRoomId) return false;
        if (meetingRoomName != null ? !meetingRoomName.equals(that.meetingRoomName) : that.meetingRoomName != null)
            return false;
        if (capacity != null ? !capacity.equals(that.capacity) : that.capacity != null) return false;
        if (roomNumbler != null ? !roomNumbler.equals(that.roomNumbler) : that.roomNumbler != null) return false;
        if (remark != null ? !remark.equals(that.remark) : that.remark != null) return false;
        if (currentAtate != null ? !currentAtate.equals(that.currentAtate) : that.currentAtate != null) return false;

        return true;
    }

    @Override
    public int hashCode() {
        int result = meetingRoomId;
        result = 31 * result + (meetingRoomName != null ? meetingRoomName.hashCode() : 0);
        result = 31 * result + (capacity != null ? capacity.hashCode() : 0);
        result = 31 * result + (roomNumbler != null ? roomNumbler.hashCode() : 0);
        result = 31 * result + (remark != null ? remark.hashCode() : 0);
        result = 31 * result + (currentAtate != null ? currentAtate.hashCode() : 0);
        return result;
    }
}
