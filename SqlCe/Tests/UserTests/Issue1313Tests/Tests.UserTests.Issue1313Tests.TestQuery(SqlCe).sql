BeforeExecute
-- SqlCe

DROP TABLE [ValueItem]

BeforeExecute
-- SqlCe

CREATE TABLE [ValueItem]
(
	[Value] Int NOT NULL
)

BeforeExecute
-- SqlCe

INSERT INTO [ValueItem]
(
	[Value]
)
VALUES
(
	123
)

BeforeExecute
-- SqlCe

SELECT
	[row_1].[Value] as [ChangeToProp]
FROM
	[ValueItem] [row_1]

BeforeExecute
-- SqlCe

DROP TABLE [ValueItem]

