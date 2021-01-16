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
DECLARE @Group_1 Integer(4) -- Int32
SET     @Group_1 = 7
DECLARE @Order_1 Integer(4) -- Int32
SET     @Order_1 = 10
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
	@Group_1,
	@Order_1,
	@Id
)

BeforeExecute
-- Informix.DB2 Informix
DECLARE @Group_1 Integer(4) -- Int32
SET     @Group_1 = 7
DECLARE @Order_1 Integer(4) -- Int32
SET     @Order_1 = 20
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
	@Group_1,
	@Order_1,
	@Id
)

BeforeExecute
-- Informix.DB2 Informix
DECLARE @Group_1 Integer(4) -- Int32
SET     @Group_1 = 7
DECLARE @Order_1 Integer(4) -- Int32
SET     @Order_1 = 30
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
	@Group_1,
	@Order_1,
	@Id
)

BeforeExecute
-- Informix.DB2 Informix
DECLARE @Group_1 Integer(4) -- Int32
SET     @Group_1 = 7
DECLARE @Order_1 Integer(4) -- Int32
SET     @Order_1 = 40
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
	@Group_1,
	@Order_1,
	@Id
)

BeforeExecute
-- Informix.DB2 Informix

DROP TABLE IF EXISTS "Position"

