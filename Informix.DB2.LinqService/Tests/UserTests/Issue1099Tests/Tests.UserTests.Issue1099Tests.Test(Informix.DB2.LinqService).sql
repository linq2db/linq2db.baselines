BeforeExecute
-- Informix.DB2 Informix

DROP TABLE IF EXISTS BackgroundTask

BeforeExecute
-- Informix.DB2 Informix

CREATE TABLE IF NOT EXISTS BackgroundTask
(
	ID               Int     NULL,
	DurationID       Int NOT NULL,
	DurationInterval Int NOT NULL,
	PersonID         Int     NULL
)

BeforeExecute
-- Informix.DB2 Informix
DECLARE @ID Integer(4) -- Int32
SET     @ID = 3
DECLARE @DurationID Integer(4) -- Int32
SET     @DurationID = 2
DECLARE @DurationInterval Integer(4) -- Int32
SET     @DurationInterval = 4
DECLARE @PersonID Integer(4) -- Int32
SET     @PersonID = 1

INSERT INTO BackgroundTask
(
	ID,
	DurationID,
	DurationInterval,
	PersonID
)
VALUES
(
	@ID,
	@DurationID,
	@DurationInterval,
	@PersonID
)

BeforeExecute
-- Informix.DB2 Informix

DROP TABLE IF EXISTS BackgroundTask

