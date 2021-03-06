﻿BeforeExecute
-- Oracle.Managed Oracle12
DECLARE @Id Int32
SET     @Id = 105

DELETE FROM
	LinqDataTypes r
WHERE
	r.ID >= 101 AND r.ID < :Id

BeforeExecute
-- Oracle.Managed Oracle12
DECLARE @Id Int32
SET     @Id = 101
DECLARE @Value_1 Varchar2(2) -- String
SET     @Value_1 = '11'

INSERT INTO LinqDataTypes
(
	ID,
	StringValue
)
VALUES
(
	:Id,
	:Value_1
)

BeforeExecute
-- Oracle.Managed Oracle12
DECLARE @Id Int32
SET     @Id = 102
DECLARE @Value_1 Varchar2(2) -- String
SET     @Value_1 = '22'

INSERT INTO LinqDataTypes
(
	ID,
	StringValue
)
VALUES
(
	:Id,
	:Value_1
)

BeforeExecute
-- Oracle.Managed Oracle12
DECLARE @Id Int32
SET     @Id = 103
DECLARE @Value_1 Varchar2 -- String
SET     @Value_1 = NULL

INSERT INTO LinqDataTypes
(
	ID,
	StringValue
)
VALUES
(
	:Id,
	:Value_1
)

BeforeExecute
-- Oracle.Managed Oracle12
DECLARE @Id Int32
SET     @Id = 104
DECLARE @Value_1 Varchar2 -- String
SET     @Value_1 = NULL

INSERT INTO LinqDataTypes
(
	ID,
	StringValue
)
VALUES
(
	:Id,
	:Value_1
)

BeforeExecute
-- Oracle.Managed Oracle12

SELECT
	r.ID,
	r.StringValue
FROM
	LinqDataTypes r
WHERE
	r.ID >= 101 AND r.ID <= 104
ORDER BY
	r.ID

BeforeExecute
-- Oracle.Managed Oracle12

SELECT
	r.ID,
	r.IntValue,
	r.StringValue
FROM
	LinqDataTypes r
WHERE
	r.ID >= 101 AND r.ID <= 104
ORDER BY
	r.ID

BeforeExecute
-- Oracle.Managed Oracle12
DECLARE @Id Int32
SET     @Id = 105

DELETE FROM
	LinqDataTypes r
WHERE
	r.ID >= 101 AND r.ID < :Id

