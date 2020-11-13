BeforeExecute
-- Oracle.Managed Oracle12

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "Issue2564Table"';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -942 THEN
			RAISE;
		END IF;
END;

BeforeExecute
-- Oracle.Managed Oracle12

CREATE TABLE "Issue2564Table"
(
	"Id"                     Number(19)   NOT NULL,
	"TimestampGenerated"     timestamp    NOT NULL,
	"TimestampGone"          timestamp        NULL,
	"MessageClassName"       VarChar(255)     NULL,
	"ExternID1"              VarChar(255)     NULL,
	"TranslatedMessageGroup" VarChar(255)     NULL,
	"TranslatedMessage1"     VarChar(255)     NULL,

	CONSTRAINT "PK_Issue2564Table" PRIMARY KEY ("Id")
)

BeforeExecute
-- Oracle.Managed Oracle12
DECLARE @from_1 TimeStamp -- DateTime
SET     @from_1 = TO_TIMESTAMP('2020-11-12 18:29:46.009270', 'YYYY-MM-DD HH24:MI:SS.FF6')
DECLARE @to_1 TimeStamp -- DateTime
SET     @to_1 = TO_TIMESTAMP('2020-11-13 18:29:46.009270', 'YYYY-MM-DD HH24:MI:SS.FF6')

SELECT
	Min(t1."TranslatedMessage1"),
	t1."Key_2",
	t1."Key_3",
	Count(*),
	Sum(1000 * (EXTRACT(SECOND FROM CAST (t1."TimestampGone" as TIMESTAMP) - CAST (t1."TimestampGenerated" as TIMESTAMP)) + 60 * (EXTRACT(MINUTE FROM CAST (t1."TimestampGone" as TIMESTAMP) - CAST (t1."TimestampGenerated" as TIMESTAMP)) + 60 * (EXTRACT(HOUR FROM CAST (t1."TimestampGone" as TIMESTAMP) - CAST (t1."TimestampGenerated" as TIMESTAMP)) + 24 * EXTRACT(DAY FROM CAST (t1."TimestampGone" as TIMESTAMP) - CAST (t1."TimestampGenerated" as TIMESTAMP))))))
FROM
	(
		SELECT
			m_1."ExternID1" as "Key_1",
			m_1."TranslatedMessageGroup" as "Key_2",
			To_Number(To_Char(m_1."TimestampGenerated", 'HH24')) as "Key_3",
			m_1."TranslatedMessage1",
			m_1."TimestampGenerated",
			m_1."TimestampGone"
		FROM
			"Issue2564Table" m_1
		WHERE
			m_1."TimestampGone" IS NOT NULL AND
			m_1."TimestampGenerated" >= :from_1 AND
			m_1."TimestampGenerated" <= :to_1 AND
			m_1."MessageClassName" = 'Error'
	) t1
GROUP BY
	t1."Key_1",
	t1."Key_2",
	t1."Key_3"

