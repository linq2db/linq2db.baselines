﻿BeforeExecute
-- Informix.DB2 Informix

CREATE TABLE Issue1554Table
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
DECLARE @ClaimedKeyType VarChar(2) -- String
SET     @ClaimedKeyType = 'EC'
DECLARE @ClaimedKeyTypeN VarChar(2) -- String
SET     @ClaimedKeyTypeN = 'EC'

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

SELECT FIRST 2 
	t1.Id, 
	t1.ClaimedKeyType, 
	t1.ClaimedKeyTypeN
FROM
	Issue1554Table t1

BeforeExecute
-- Informix.DB2 Informix

DROP TABLE Issue1554Table

