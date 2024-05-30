BeforeExecute
-- Informix.DB2 Informix

DROP TABLE IF EXISTS Issue1554FluentTable

BeforeExecute
-- Informix.DB2 Informix

CREATE TABLE IF NOT EXISTS Issue1554FluentTable
(
	Id              Int         NOT NULL,
	ClaimedKeyType  NVarChar(3) NOT NULL,
	ClaimedKeyTypeN NVarChar(3)     NULL,

	PRIMARY KEY (Id)
)

BeforeExecute
-- Informix.DB2 Informix

INSERT INTO Issue1554FluentTable
(
	Id,
	ClaimedKeyType,
	ClaimedKeyTypeN
)
VALUES
(
	0,
	'EC',
	'EC'
)

BeforeExecute
-- Informix.DB2 Informix

SELECT FIRST 2
	t1.Id,
	t1.ClaimedKeyType,
	t1.ClaimedKeyTypeN
FROM
	Issue1554FluentTable t1

BeforeExecute
-- Informix.DB2 Informix

DROP TABLE IF EXISTS Issue1554FluentTable

