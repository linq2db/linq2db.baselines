BeforeExecute
-- Informix.DB2 Informix

CREATE TABLE Issue1554FluentTable
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

INSERT INTO Issue1554FluentTable
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

UPDATE
	Issue1554FluentTable
SET
	Issue1554FluentTable.ClaimedKeyType = @ClaimedKeyType,
	Issue1554FluentTable.ClaimedKeyTypeN = @ClaimedKeyType
WHERE
	Issue1554FluentTable.Id = 0

BeforeExecute
-- Informix.DB2 Informix

DROP TABLE Issue1554FluentTable

