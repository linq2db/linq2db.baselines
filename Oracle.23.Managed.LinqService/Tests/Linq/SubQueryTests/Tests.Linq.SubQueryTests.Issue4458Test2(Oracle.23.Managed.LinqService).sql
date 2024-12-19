BeforeExecute
-- Oracle.23.Managed Oracle.Managed Oracle12

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "Issue4458Item"';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -942 THEN
			RAISE;
		END IF;
END;

BeforeExecute
-- Oracle.23.Managed Oracle.Managed Oracle12

BEGIN
	EXECUTE IMMEDIATE '
		CREATE TABLE "Issue4458Item"
		(
			"Id" VarChar(255) NOT NULL
		)
	';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -955 THEN
			RAISE;
		END IF;
END;

BeforeExecute
-- Oracle.23.Managed Oracle.Managed Oracle12
DECLARE @Id Varchar2(1) -- String
SET     @Id = '1'

INSERT INTO "Issue4458Item"
(
	"Id"
)
VALUES
(
	:Id
)

BeforeExecute
-- Oracle.23.Managed Oracle.Managed Oracle12
DECLARE @Id Varchar2(1) -- String
SET     @Id = '2'

INSERT INTO "Issue4458Item"
(
	"Id"
)
VALUES
(
	:Id
)

BeforeExecute
-- Oracle.23.Managed Oracle.Managed Oracle12
DECLARE @Id Varchar2(1) -- String
SET     @Id = '3'

INSERT INTO "Issue4458Item"
(
	"Id"
)
VALUES
(
	:Id
)

BeforeExecute
-- Oracle.23.Managed Oracle.Managed Oracle12

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "WarehouseStock"';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -942 THEN
			RAISE;
		END IF;
END;

BeforeExecute
-- Oracle.23.Managed Oracle.Managed Oracle12

BEGIN
	EXECUTE IMMEDIATE '
		CREATE TABLE "WarehouseStock"
		(
			"ItemId"            VarChar(255) NOT NULL,
			"QuantityAvailable" Int          NOT NULL,
			"WarehouseId"       VarChar(255) NOT NULL
		)
	';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -955 THEN
			RAISE;
		END IF;
END;

BeforeExecute
-- Oracle.23.Managed Oracle.Managed Oracle12
DECLARE @ItemId Varchar2(1) -- String
SET     @ItemId = '1'
DECLARE @QuantityAvailable Int32
SET     @QuantityAvailable = 10
DECLARE @WarehouseId Varchar2(1) -- String
SET     @WarehouseId = 'A'

INSERT INTO "WarehouseStock"
(
	"ItemId",
	"QuantityAvailable",
	"WarehouseId"
)
VALUES
(
	:ItemId,
	:QuantityAvailable,
	:WarehouseId
)

BeforeExecute
-- Oracle.23.Managed Oracle.Managed Oracle12

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "Review"';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -942 THEN
			RAISE;
		END IF;
END;

BeforeExecute
-- Oracle.23.Managed Oracle.Managed Oracle12

BEGIN
	EXECUTE IMMEDIATE '
		CREATE TABLE "Review"
		(
			"ItemId" VarChar(255) NOT NULL,
			"UserId" VarChar(255) NOT NULL,
			"Score"  Int          NOT NULL
		)
	';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -955 THEN
			RAISE;
		END IF;
END;

BeforeExecute
-- Oracle.23.Managed Oracle.Managed Oracle12
DECLARE @ItemId Varchar2(1) -- String
SET     @ItemId = '1'
DECLARE @UserId Varchar2(1) -- String
SET     @UserId = '1'
DECLARE @Score Int32
SET     @Score = 100

INSERT INTO "Review"
(
	"ItemId",
	"UserId",
	"Score"
)
VALUES
(
	:ItemId,
	:UserId,
	:Score
)

BeforeExecute
-- Oracle.23.Managed Oracle.Managed Oracle12
DECLARE @ItemId Varchar2(1) -- String
SET     @ItemId = '1'
DECLARE @UserId Varchar2(1) -- String
SET     @UserId = '2'
DECLARE @Score Int32
SET     @Score = 90

INSERT INTO "Review"
(
	"ItemId",
	"UserId",
	"Score"
)
VALUES
(
	:ItemId,
	:UserId,
	:Score
)

BeforeExecute
-- Oracle.23.Managed Oracle.Managed Oracle12
DECLARE @ItemId Varchar2(1) -- String
SET     @ItemId = '2'
DECLARE @UserId Varchar2(1) -- String
SET     @UserId = '1'
DECLARE @Score Int32
SET     @Score = 89

INSERT INTO "Review"
(
	"ItemId",
	"UserId",
	"Score"
)
VALUES
(
	:ItemId,
	:UserId,
	:Score
)

BeforeExecute
-- Oracle.23.Managed Oracle.Managed Oracle12
DECLARE @ItemId Varchar2(1) -- String
SET     @ItemId = '2'
DECLARE @UserId Varchar2(1) -- String
SET     @UserId = '4'
DECLARE @Score Int32
SET     @Score = 93

INSERT INTO "Review"
(
	"ItemId",
	"UserId",
	"Score"
)
VALUES
(
	:ItemId,
	:UserId,
	:Score
)

BeforeExecute
-- Oracle.23.Managed Oracle.Managed Oracle12
DECLARE @ItemId Varchar2(1) -- String
SET     @ItemId = '3'
DECLARE @UserId Varchar2(1) -- String
SET     @UserId = '5'
DECLARE @Score Int32
SET     @Score = 91

INSERT INTO "Review"
(
	"ItemId",
	"UserId",
	"Score"
)
VALUES
(
	:ItemId,
	:UserId,
	:Score
)

BeforeExecute
-- Oracle.23.Managed Oracle.Managed Oracle12

SELECT
	m_1."Id",
	d."ItemId",
	d."UserId",
	d."Score"
FROM
	(
		SELECT DISTINCT
			t1."Id"
		FROM
			"Issue4458Item" t1
		WHERE
			EXISTS(
				SELECT
					*
				FROM
					"Review" r
				WHERE
					r."ItemId" = t1."Id" AND r."Score" > 95
			)
	) m_1
		INNER JOIN "Review" d ON d."ItemId" = m_1."Id"

BeforeExecute
-- Oracle.23.Managed Oracle.Managed Oracle12

SELECT
	i."Id",
	(
		SELECT
			SUM(s."QuantityAvailable")
		FROM
			"WarehouseStock" s
		WHERE
			s."ItemId" = i."Id" AND (
				SELECT
					stock."ItemId"
				FROM
					"WarehouseStock" stock
				WHERE
					stock."ItemId" = i."Id"
				GROUP BY
					stock."ItemId"
			) = s."ItemId"
	)
FROM
	"Issue4458Item" i
WHERE
	EXISTS(
		SELECT
			*
		FROM
			"Review" r
		WHERE
			r."ItemId" = i."Id" AND r."Score" > 95
	)

BeforeExecute
-- Oracle.23.Managed Oracle.Managed Oracle12

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "Review"';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -942 THEN
			RAISE;
		END IF;
END;

BeforeExecute
-- Oracle.23.Managed Oracle.Managed Oracle12

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "WarehouseStock"';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -942 THEN
			RAISE;
		END IF;
END;

BeforeExecute
-- Oracle.23.Managed Oracle.Managed Oracle12

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "Issue4458Item"';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -942 THEN
			RAISE;
		END IF;
END;

