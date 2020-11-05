BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11

CREATE TABLE Issue1316Tests
(
	ID Int NOT NULL,

	CONSTRAINT PK_Issue1316Tests PRIMARY KEY (ID)
)

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11
DECLARE @ID Int32
SET     @ID = 5

INSERT INTO Issue1316Tests
(
	ID
)
VALUES
(
	:ID
)

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11
DECLARE @ID Int32
SET     @ID = 5
DECLARE @take Int32
SET     @take = 2

SELECT
	t1.ID
FROM
	Issue1316Tests t1
WHERE
	t1.ID = :ID AND ROWNUM <= :take

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11
DECLARE @Id Int32
SET     @Id = 5
DECLARE @take Int32
SET     @take = 2

SELECT
	t1.ID
FROM
	Issue1316Tests t1
WHERE
	t1.ID = :Id AND ROWNUM <= :take

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11

DROP TABLE Issue1316Tests

