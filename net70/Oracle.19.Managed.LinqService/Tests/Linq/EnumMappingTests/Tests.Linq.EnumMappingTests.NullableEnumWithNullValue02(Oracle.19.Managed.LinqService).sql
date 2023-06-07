﻿BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12
DECLARE @Id Int32
SET     @Id = 105

DELETE FROM
	"LinqDataTypes" r
WHERE
	r.ID >= 101 AND r.ID < :Id

BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12
DECLARE @Id Int32
SET     @Id = 101
DECLARE @Value Int32
SET     @Value = 11

INSERT INTO "LinqDataTypes"
(
	ID,
	"IntValue"
)
VALUES
(
	:Id,
	:Value
)

BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12
DECLARE @Id Int32
SET     @Id = 102
DECLARE @Value Int32
SET     @Value = 22

INSERT INTO "LinqDataTypes"
(
	ID,
	"IntValue"
)
VALUES
(
	:Id,
	:Value
)

BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12
DECLARE @Id Int32
SET     @Id = 103
DECLARE @Value Int32
SET     @Value = NULL

INSERT INTO "LinqDataTypes"
(
	ID,
	"IntValue"
)
VALUES
(
	:Id,
	:Value
)

BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12
DECLARE @Id Int32
SET     @Id = 104
DECLARE @Value Int32
SET     @Value = NULL

INSERT INTO "LinqDataTypes"
(
	ID,
	"IntValue"
)
VALUES
(
	:Id,
	:Value
)

BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12

SELECT
	r.ID,
	r."IntValue"
FROM
	"LinqDataTypes" r
WHERE
	r.ID >= 101 AND r.ID <= 104
ORDER BY
	r.ID

BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12

SELECT
	r.ID,
	r."IntValue",
	r."StringValue"
FROM
	"LinqDataTypes" r
WHERE
	r.ID >= 101 AND r.ID <= 104
ORDER BY
	r.ID

BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12
DECLARE @Id Int32
SET     @Id = 105

DELETE FROM
	"LinqDataTypes" r
WHERE
	r.ID >= 101 AND r.ID < :Id

