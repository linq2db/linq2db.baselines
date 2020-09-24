BeforeExecute
-- Informix.DB2 Informix

CREATE TABLE CustomerBase
(
	Id           SERIAL         NOT NULL,
	ClientType   NChar          NOT NULL,
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
	Nvl(cb.Enabled, 'f')
FROM
	CustomerBase cb
WHERE
	cb.ClientType = 'Client'

BeforeExecute
-- Informix.DB2 Informix

DROP TABLE CustomerBase

