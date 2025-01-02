BeforeExecute
-- Informix.DB2 Informix

DROP TABLE IF EXISTS "Position"

BeforeExecute
-- Informix.DB2 Informix

CREATE TABLE IF NOT EXISTS "Position"
(
	"Group" Int NOT NULL,
	"Order" Int NOT NULL,
	Id      Int     NULL
)

BeforeExecute
-- Informix.DB2 Informix
DECLARE @Group Integer(4) -- Int32
SET     @Group = 7
DECLARE @Order Integer(4) -- Int32
SET     @Order = 10
DECLARE @Id Integer(4) -- Int32
SET     @Id = 5

INSERT INTO "Position"
(
	"Group",
	"Order",
	Id
)
VALUES
(
	@Group,
	@Order,
	@Id
)

BeforeExecute
-- Informix.DB2 Informix
DECLARE @Group Integer(4) -- Int32
SET     @Group = 7
DECLARE @Order Integer(4) -- Int32
SET     @Order = 20
DECLARE @Id Integer(4) -- Int32
SET     @Id = 6

INSERT INTO "Position"
(
	"Group",
	"Order",
	Id
)
VALUES
(
	@Group,
	@Order,
	@Id
)

BeforeExecute
-- Informix.DB2 Informix
DECLARE @Group Integer(4) -- Int32
SET     @Group = 7
DECLARE @Order Integer(4) -- Int32
SET     @Order = 30
DECLARE @Id Integer -- Int32
SET     @Id = NULL

INSERT INTO "Position"
(
	"Group",
	"Order",
	Id
)
VALUES
(
	@Group,
	@Order,
	@Id
)

BeforeExecute
-- Informix.DB2 Informix
DECLARE @Group Integer(4) -- Int32
SET     @Group = 7
DECLARE @Order Integer(4) -- Int32
SET     @Order = 40
DECLARE @Id Integer -- Int32
SET     @Id = NULL

INSERT INTO "Position"
(
	"Group",
	"Order",
	Id
)
VALUES
(
	@Group,
	@Order,
	@Id
)

BeforeExecute
-- Informix.DB2 Informix
DECLARE @group Integer(4) -- Int32
SET     @group = 7

SELECT
	p.Id,
	FIRST_VALUE(p.Id) OVER(ORDER BY p."Order" DESC)
FROM
	"Position" p
WHERE
	p."Group" = @group

BeforeExecute
-- Informix.DB2 Informix

DROP TABLE IF EXISTS "Position"

