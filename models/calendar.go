package models

type Calendar struct {
	Id           uint     `json:"id"`
	FreeSlots    []string `json:"free_slots"`
	Appointments []string `json:"appointments"`
}
