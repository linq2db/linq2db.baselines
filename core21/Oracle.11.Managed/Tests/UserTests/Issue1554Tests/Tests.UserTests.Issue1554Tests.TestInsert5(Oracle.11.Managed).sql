BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11

CREATE TABLE Issue1554Table
(
	Id              Int           NOT NULL,
	ClaimedKeyType  VarChar(4000) NOT NULL,
	ClaimedKeyTypeN VarChar(4000)     NULL,

	CONSTRAINT PK_Issue1554Table PRIMARY KEY (Id)
)

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11
DECLARE @Id Int32
SET     @Id = 0
DECLARE @ClaimedKeyType Varchar2(2) -- String
SET     @ClaimedKeyType = 'EC'
DECLARE @ClaimedKeyTypeN Varchar2(2) -- String
SET     @ClaimedKeyTypeN = 'EC'

INSERT INTO Issue1554Table
(
	Id,
	ClaimedKeyType,
	ClaimedKeyTypeN
)
VALUES
(
	:Id,
	:ClaimedKeyType,
	:ClaimedKeyTypeN
)

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11
DECLARE @take Int32
SET     @take = 2

SELECT
	t1.Id,
	t1.ClaimedKeyType,
	t1.ClaimedKeyTypeN
FROM
	Issue1554Table t1
WHERE
	ROWNUM <= :take

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11

DROP TABLE Issue1554Table

