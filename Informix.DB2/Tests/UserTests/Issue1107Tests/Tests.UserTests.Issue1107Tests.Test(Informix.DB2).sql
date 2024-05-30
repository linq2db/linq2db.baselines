BeforeExecute
-- Informix.DB2 Informix

DROP TABLE IF EXISTS Issue1107TB

BeforeExecute
-- Informix.DB2 Informix

CREATE TABLE IF NOT EXISTS Issue1107TB
(
	Id       Int                       NOT NULL,
	TestDate datetime year to fraction NOT NULL,

	PRIMARY KEY (Id)
)

BeforeExecute
INSERT BULK Issue1107TB

BeforeExecute
-- Informix.DB2 Informix

DROP TABLE IF EXISTS Issue1107TB

