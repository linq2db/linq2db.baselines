﻿BeforeExecute
-- Informix.DB2 Informix

DROP TABLE IF EXISTS Issue1110TB

BeforeExecute
-- Informix.DB2 Informix

CREATE TABLE IF NOT EXISTS Issue1110TB
(
	Id          Int                       NOT NULL,
	"TimeStamp" datetime year to fraction NOT NULL,

	PRIMARY KEY (Id)
)

BeforeExecute
-- Informix.DB2 Informix
DECLARE @Id Integer(4) -- Int32
SET     @Id = 10
DECLARE @TimeStamp Timestamp(16) -- DateTime
SET     @TimeStamp = TO_DATE('2020-02-29 17:54:55.12312', '%Y-%m-%d %H:%M:%S.%F5')

INSERT INTO Issue1110TB
(
	Id,
	"TimeStamp"
)
VALUES
(
	@Id,
	@TimeStamp
)

BeforeExecute
-- Informix.DB2 Informix

DROP TABLE IF EXISTS Issue1110TB

