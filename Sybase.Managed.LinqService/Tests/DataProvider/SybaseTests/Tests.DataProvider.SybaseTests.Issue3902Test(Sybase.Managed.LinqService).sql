BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'Issue3902') IS NOT NULL)
	DROP TABLE [Issue3902]

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'Issue3902') IS NULL)
	EXECUTE('
		CREATE TABLE [Issue3902]
		(
			[TPPSLT_TYPE]                 NChar(1)      NOT NULL,
			[TPPSLT_KIND_ID]              NVarChar(255) NOT NULL,
			[TPPSLT_QUOTE_DURATION_MULTI] Decimal       NOT NULL,
			[TPPSLT_USER_ID]              NVarChar(255)     NULL,

			CONSTRAINT [PK_Issue3902] PRIMARY KEY CLUSTERED ([TPPSLT_TYPE], [TPPSLT_KIND_ID])
		)
	')

BeforeExecute
-- Sybase.Managed Sybase
DECLARE @TPPSLT_QUOTE_DURATION_MULT Decimal(2, 0)
SET     @TPPSLT_QUOTE_DURATION_MULT = 10
DECLARE @TPPSLT_USER_ID UniVarChar(11) -- String
SET     @TPPSLT_USER_ID = 'IamHandsome'

UPDATE
	[Issue3902]
SET
	[TPPSLT_QUOTE_DURATION_MULTI] = @TPPSLT_QUOTE_DURATION_MULT,
	[TPPSLT_USER_ID] = @TPPSLT_USER_ID
WHERE
	[Issue3902].[TPPSLT_TYPE] = '4' AND [Issue3902].[TPPSLT_KIND_ID] = 'AAA'

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'Issue3902') IS NOT NULL)
	DROP TABLE [Issue3902]

