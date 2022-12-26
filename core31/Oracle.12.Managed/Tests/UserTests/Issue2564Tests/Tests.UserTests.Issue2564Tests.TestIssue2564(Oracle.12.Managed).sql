BeforeExecute
-- Oracle.12.Managed Oracle.Managed Oracle12

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "Issue2564Table"';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -942 THEN
			RAISE;
		END IF;
END;

BeforeExecute
-- Oracle.12.Managed Oracle.Managed Oracle12

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
-- Oracle.12.Managed Oracle.Managed Oracle12
DECLARE @from_1 TimeStamp -- DateTime
SET     @from_1 = TIMESTAMP '2020-02-28 17:54:55.123123'
DECLARE @to_1 TimeStamp -- DateTime
SET     @to_1 = TIMESTAMP '2020-02-29 17:54:55.123123'

SELECT
	Min(m_1."TranslatedMessage1"),
	m_1."TranslatedMessageGroup",
	To_Number(To_Char(m_1."TimestampGenerated", 'HH24')),
	Count(*),
	Sum(1000 * (EXTRACT(SECOND FROM CAST (m_1."TimestampGone" as TIMESTAMP) - CAST (m_1."TimestampGenerated" as TIMESTAMP)) + 60 * (EXTRACT(MINUTE FROM CAST (m_1."TimestampGone" as TIMESTAMP) - CAST (m_1."TimestampGenerated" as TIMESTAMP)) + 60 * (EXTRACT(HOUR FROM CAST (m_1."TimestampGone" as TIMESTAMP) - CAST (m_1."TimestampGenerated" as TIMESTAMP)) + 24 * EXTRACT(DAY FROM CAST (m_1."TimestampGone" as TIMESTAMP) - CAST (m_1."TimestampGenerated" as TIMESTAMP))))))
FROM
	"Issue2564Table" m_1
WHERE
	m_1."TimestampGone" IS NOT NULL AND
	m_1."TimestampGenerated" >= :from_1 AND
	m_1."TimestampGenerated" <= :to_1 AND
	m_1."MessageClassName" = 'Error'
GROUP BY
	m_1."ExternID1",
	m_1."TranslatedMessageGroup",
	To_Number(To_Char(m_1."TimestampGenerated", 'HH24'))

