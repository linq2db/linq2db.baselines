BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "DistinctOrderByTable"';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -942 THEN
			RAISE;
		END IF;
END;

BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12

BEGIN
	EXECUTE IMMEDIATE '
		CREATE TABLE "DistinctOrderByTable"
		(
			"Id" Int          NOT NULL,
			F1   Int          NOT NULL,
			F2   VarChar(255)     NULL,
			F3   Int          NOT NULL,

			CONSTRAINT "PK_DistinctOrderByTable" PRIMARY KEY ("Id")
		)
	';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -955 THEN
			RAISE;
		END IF;
END;

BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12
DECLARE @Id Int32
SET     @Id = 8
DECLARE @F1 Int32
SET     @F1 = 8
DECLARE @F2 Varchar2(1) -- String
SET     @F2 = '8'
DECLARE @F3 Int32
SET     @F3 = 5

INSERT INTO "DistinctOrderByTable"
(
	"Id",
	F1,
	F2,
	F3
)
VALUES
(
	:Id,
	:F1,
	:F2,
	:F3
)

BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12
DECLARE @Id Int32
SET     @Id = 3
DECLARE @F1 Int32
SET     @F1 = 3
DECLARE @F2 Varchar2(1) -- String
SET     @F2 = '3'
DECLARE @F3 Int32
SET     @F3 = 3

INSERT INTO "DistinctOrderByTable"
(
	"Id",
	F1,
	F2,
	F3
)
VALUES
(
	:Id,
	:F1,
	:F2,
	:F3
)

BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12
DECLARE @Id Int32
SET     @Id = 2
DECLARE @F1 Int32
SET     @F1 = 2
DECLARE @F2 Varchar2(1) -- String
SET     @F2 = '2'
DECLARE @F3 Int32
SET     @F3 = 1

INSERT INTO "DistinctOrderByTable"
(
	"Id",
	F1,
	F2,
	F3
)
VALUES
(
	:Id,
	:F1,
	:F2,
	:F3
)

BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12
DECLARE @Id Int32
SET     @Id = 6
DECLARE @F1 Int32
SET     @F1 = 3
DECLARE @F2 Varchar2(1) -- String
SET     @F2 = '3'
DECLARE @F3 Int32
SET     @F3 = 4

INSERT INTO "DistinctOrderByTable"
(
	"Id",
	F1,
	F2,
	F3
)
VALUES
(
	:Id,
	:F1,
	:F2,
	:F3
)

BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12
DECLARE @Id Int32
SET     @Id = 1
DECLARE @F1 Int32
SET     @F1 = 3
DECLARE @F2 Varchar2(1) -- String
SET     @F2 = '3'
DECLARE @F3 Int32
SET     @F3 = 7

INSERT INTO "DistinctOrderByTable"
(
	"Id",
	F1,
	F2,
	F3
)
VALUES
(
	:Id,
	:F1,
	:F2,
	:F3
)

BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12
DECLARE @Id Int32
SET     @Id = 5
DECLARE @F1 Int32
SET     @F1 = 5
DECLARE @F2 Varchar2(1) -- String
SET     @F2 = '5'
DECLARE @F3 Int32
SET     @F3 = 2

INSERT INTO "DistinctOrderByTable"
(
	"Id",
	F1,
	F2,
	F3
)
VALUES
(
	:Id,
	:F1,
	:F2,
	:F3
)

BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12
DECLARE @Id Int32
SET     @Id = 7
DECLARE @F1 Int32
SET     @F1 = 2
DECLARE @F2 Varchar2(1) -- String
SET     @F2 = '2'
DECLARE @F3 Int32
SET     @F3 = 8

INSERT INTO "DistinctOrderByTable"
(
	"Id",
	F1,
	F2,
	F3
)
VALUES
(
	:Id,
	:F1,
	:F2,
	:F3
)

BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12
DECLARE @Id Int32
SET     @Id = 4
DECLARE @F1 Int32
SET     @F1 = 4
DECLARE @F2 Varchar2(1) -- String
SET     @F2 = '4'
DECLARE @F3 Int32
SET     @F3 = 6

INSERT INTO "DistinctOrderByTable"
(
	"Id",
	F1,
	F2,
	F3
)
VALUES
(
	:Id,
	:F1,
	:F2,
	:F3
)

BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12
DECLARE @skip Int32
SET     @skip = 1
DECLARE @take Int32
SET     @take = 2

SELECT
	t2.F2
FROM
	(
		SELECT DISTINCT
			t1.F1,
			t1.F2
		FROM
			"DistinctOrderByTable" t1
	) t2
OFFSET :skip ROWS FETCH NEXT :take ROWS ONLY 

BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "DistinctOrderByTable"';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -942 THEN
			RAISE;
		END IF;
END;

