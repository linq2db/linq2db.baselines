BeforeExecute
-- Oracle.23.Managed Oracle.Managed Oracle12

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "Issue3631Table"';
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
		CREATE TABLE "Issue3631Table"
		(
			"Country" VarChar(2) NOT NULL,
			"State"   VarChar(2) NOT NULL
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
DECLARE @Country Varchar2(2) -- String
SET     @Country = 'US'
DECLARE @State Varchar2(2) -- String
SET     @State = 'AL'

INSERT INTO "Issue3631Table"
(
	"Country",
	"State"
)
VALUES
(
	:Country,
	:State
)

BeforeExecute
-- Oracle.23.Managed Oracle.Managed Oracle12
DECLARE @Country Varchar2(2) -- String
SET     @Country = 'US'
DECLARE @State Varchar2(2) -- String
SET     @State = 'AZ'

INSERT INTO "Issue3631Table"
(
	"Country",
	"State"
)
VALUES
(
	:Country,
	:State
)

BeforeExecute
-- Oracle.23.Managed Oracle.Managed Oracle12
DECLARE @Country Varchar2(2) -- String
SET     @Country = 'US'
DECLARE @State Varchar2(2) -- String
SET     @State = 'CA'

INSERT INTO "Issue3631Table"
(
	"Country",
	"State"
)
VALUES
(
	:Country,
	:State
)

BeforeExecute
-- Oracle.23.Managed Oracle.Managed Oracle12
DECLARE @Country Varchar2(2) -- String
SET     @Country = 'US'
DECLARE @State Varchar2(2) -- String
SET     @State = 'FL'

INSERT INTO "Issue3631Table"
(
	"Country",
	"State"
)
VALUES
(
	:Country,
	:State
)

BeforeExecute
-- Oracle.23.Managed Oracle.Managed Oracle12
DECLARE @Country Varchar2(2) -- String
SET     @Country = 'US'
DECLARE @State Varchar2(2) -- String
SET     @State = 'IN'

INSERT INTO "Issue3631Table"
(
	"Country",
	"State"
)
VALUES
(
	:Country,
	:State
)

BeforeExecute
-- Oracle.23.Managed Oracle.Managed Oracle12
DECLARE @Country Varchar2(2) -- String
SET     @Country = 'US'
DECLARE @State Varchar2(2) -- String
SET     @State = 'OH'

INSERT INTO "Issue3631Table"
(
	"Country",
	"State"
)
VALUES
(
	:Country,
	:State
)

BeforeExecute
-- Oracle.23.Managed Oracle.Managed Oracle12
DECLARE @Country Varchar2(2) -- String
SET     @Country = 'US'
DECLARE @State Varchar2(2) -- String
SET     @State = 'NY'

INSERT INTO "Issue3631Table"
(
	"Country",
	"State"
)
VALUES
(
	:Country,
	:State
)

BeforeExecute
-- Oracle.23.Managed Oracle.Managed Oracle12
DECLARE @Country Varchar2(2) -- String
SET     @Country = 'CA'
DECLARE @State Varchar2(2) -- String
SET     @State = 'AB'

INSERT INTO "Issue3631Table"
(
	"Country",
	"State"
)
VALUES
(
	:Country,
	:State
)

BeforeExecute
-- Oracle.23.Managed Oracle.Managed Oracle12
DECLARE @Country Varchar2(2) -- String
SET     @Country = 'CA'
DECLARE @State Varchar2(2) -- String
SET     @State = 'ON'

INSERT INTO "Issue3631Table"
(
	"Country",
	"State"
)
VALUES
(
	:Country,
	:State
)

BeforeExecute
-- Oracle.23.Managed Oracle.Managed Oracle12

SELECT
	x."Country",
	x."State"
FROM
	"Issue3631Table" x
WHERE
	(x."Country", x."State") IN (('US', 'CA'), ('US', 'NY'))

BeforeExecute
-- Oracle.23.Managed Oracle.Managed Oracle12

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "Issue3631Table"';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -942 THEN
			RAISE;
		END IF;
END;

