CREATE NONCLUSTERED INDEX Conf_StartDate_INDEX ON Conferences (StartDate)
CREATE NONCLUSTERED INDEX Conf_Name_INDEX ON Conferences (Name)

CREATE NONCLUSTERED INDEX Attendees_Name_INDEX ON Attendees (FirstName, LastName)

CREATE NONCLUSTERED INDEX Clients_Name_INDEX ON Clients (Name)

--Foreign Keys
CREATE NONCLUSTERED INDEX PT_DayID_INDEX ON PriceThresholds (DayID)
CREATE NONCLUSTERED INDEX Days_ConfID_INDEX ON Days (ConferenceID)
CREATE NONCLUSTERED INDEX Wkshps_DayID_INDEX ON Workshops (DayID)
CREATE NONCLUSTERED INDEX CR_ConfID_INDEX ON ConferenceReservations (ConferenceID)
CREATE NONCLUSTERED INDEX CR_ClientID_INDEX ON ConferenceReservations (ClientID)
CREATE NONCLUSTERED INDEX DR_DayID_INDEX ON DayReservations (DayID)
CREATE NONCLUSTERED INDEX DR_ResID_INDEX ON DayReservations (ReservationID)
CREATE NONCLUSTERED INDEX Payments_CRID_INDEX ON Payments (ConferenceReservationID)
CREATE NONCLUSTERED INDEX WR_DRID_INDEX ON WorkshopReservations (DayReservationID)
CREATE NONCLUSTERED INDEX WR_WID_INDEX ON WorkshopReservations (WorkshopID)
CREATE NONCLUSTERED INDEX AW_ADID_INDEX ON AttendeesWorkshop (AttendeeDayID)
CREATE NONCLUSTERED INDEX AW_WRID_INDEX ON AttendeesWorkshop (WorkshopReservationID)


