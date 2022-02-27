BeforeExecute
-- Informix.DB2 Informix

CREATE TABLE Issue1110TB
(
	Id          Int                       NOT NULL,
	"TimeStamp" datetime year to fraction NOT NULL,

	PRIMARY KEY (Id)
)

BeforeExecute
-- Informix.DB2 Informix
DECLARE @Id Integer(4) -- Int32
SET     @Id = 10
DECLARE @TimeStamp_1 Timestamp(16) -- DateTime
SET     @TimeStamp_1 = TO_DATE('2020-02-29 17:54:55.12312', '%Y-%m-%d %H:%M:%S.%F5')

INSERT INTO Issue1110TB
(
	Id,
	"TimeStamp"
)
VALUES
(
	@Id,
	@TimeStamp_1
)

BeforeExecute
-- Informix.DB2 Informix

DROP TABLE Issue1110TB

