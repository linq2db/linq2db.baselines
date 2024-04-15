BeforeExecute
-- Informix.DB2 Informix

DROP TABLE IF EXISTS CustomerBase

BeforeExecute
-- Informix.DB2 Informix

CREATE TABLE IF NOT EXISTS CustomerBase
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

SELECT
	cb.Id,
	cb.Name,
	cb.ContactEmail,
	cb.Enabled
FROM
	CustomerBase cb
WHERE
	cb.ClientType = 'Client'

BeforeExecute
-- Informix.DB2 Informix

DROP TABLE IF EXISTS CustomerBase

