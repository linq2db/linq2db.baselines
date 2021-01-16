BeforeExecute
-- Informix.DB2 Informix

CREATE TABLE CustomerBase
(
	Id           SERIAL         NOT NULL,
	ClientType   NChar(6)       NOT NULL,
	Name         NVarChar(255)      NULL,
	ContactEmail NVarChar(255)      NULL,
	Enabled      BOOLEAN            NULL,

	PRIMARY KEY (Id)
)

BeforeExecute
-- Informix.DB2 Informix

DROP TABLE CustomerBase

