-- SqlServer.Contained SqlServer.2019

WITH [CTE_1] ([InvestorId], [SecurityClass], [Units])
AS
(
	SELECT
		[g_1].[InvestorId],
		[g_1].[SecurityClass],
		SUM([g_1].[Units])
	FROM
		[Transaction] [g_1]
	GROUP BY
		[g_1].[SecurityClass],
		[g_1].[InvestorId]
)
SELECT
	[p].[InvestorId],
	[p].[Units],
	SUM([p].[NetPayment])
FROM
	(
		SELECT
			[ip].[InvestorId],
			[b].[Units],
			[ip].[NetPayment]
		FROM
			[PaymentEvent] [g_2]
				INNER JOIN [InvestorPayment] [ip] ON [g_2].[Id] = [ip].[Id]
				INNER JOIN [InvestorPaymentDetail] [ipd] ON [ip].[InvestorId] = [ipd].[InvestorId]
				INNER JOIN [PaymentCalculation] [pc] ON [ipd].[CalculationId] = [pc].[Id] AND [g_2].[Id] = [pc].[EventId]
				INNER JOIN [CTE_1] [b] ON [ip].[InvestorId] = [b].[InvestorId] AND [g_2].[SecurityClass] = [b].[SecurityClass]
	) [p]
GROUP BY
	[p].[InvestorId],
	[p].[Units]

