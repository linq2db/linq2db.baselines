﻿BeforeExecute
-- Informix.DB2 Informix

DROP TABLE IF EXISTS Issue1554Table

BeforeExecute
-- Informix.DB2 Informix

CREATE TABLE IF NOT EXISTS Issue1554Table
(
	Id              Int         NOT NULL,
	ClaimedKeyType  NVarChar(3) NOT NULL,
	ClaimedKeyTypeN NVarChar(3)     NULL,

	PRIMARY KEY (Id)
)

BeforeExecute
-- Informix.DB2 Informix
DECLARE @Id Integer(4) -- Int32
SET     @Id = 0
DECLARE @ClaimedKeyType VarChar(3) -- String
SET     @ClaimedKeyType = 'RSA'
DECLARE @ClaimedKeyTypeN VarChar(3) -- String
SET     @ClaimedKeyTypeN = 'RSA'

INSERT INTO Issue1554Table
(
	Id,
	ClaimedKeyType,
	ClaimedKeyTypeN
)
VALUES
(
	@Id,
	@ClaimedKeyType,
	@ClaimedKeyTypeN
)

BeforeExecute
-- Informix.DB2 Informix
DECLARE @ClaimedKeyType VarChar(2) -- String
SET     @ClaimedKeyType = 'EC'
DECLARE @ClaimedKeyTypeN VarChar(2) -- String
SET     @ClaimedKeyTypeN = 'EC'

UPDATE
	Issue1554Table p
SET
	ClaimedKeyType = @ClaimedKeyType,
	ClaimedKeyTypeN = @ClaimedKeyTypeN
WHERE
	p.Id = 0

BeforeExecute
-- Informix.DB2 Informix

SELECT FIRST 2
	t1.Id,
	t1.ClaimedKeyType,
	t1.ClaimedKeyTypeN
FROM
	Issue1554Table t1

BeforeExecute
-- Informix.DB2 Informix

DROP TABLE IF EXISTS Issue1554Table

