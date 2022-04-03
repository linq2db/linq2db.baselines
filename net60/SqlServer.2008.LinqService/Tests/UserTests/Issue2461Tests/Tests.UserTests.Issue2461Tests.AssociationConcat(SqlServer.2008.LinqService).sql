﻿BeforeExecute
-- SqlServer.2008

CREATE TABLE [MRECEIPT]
(
	[RECEIPT_NO] NVarChar(4000)     NULL,
	[CUSTKEY]    NVarChar(4000)     NULL
)

BeforeExecute
-- SqlServer.2008

CREATE TABLE [CUST_DTL]
(
	[CUSTKEY]   NVarChar(4000)     NULL,
	[BILLGROUP] NVarChar(4000)     NULL
)

BeforeExecute
-- SqlServer.2008

IF (OBJECT_ID(N'[CUST_DTL]', N'U') IS NOT NULL)
	DROP TABLE [CUST_DTL]

BeforeExecute
-- SqlServer.2008

IF (OBJECT_ID(N'[MRECEIPT]', N'U') IS NOT NULL)
	DROP TABLE [MRECEIPT]

