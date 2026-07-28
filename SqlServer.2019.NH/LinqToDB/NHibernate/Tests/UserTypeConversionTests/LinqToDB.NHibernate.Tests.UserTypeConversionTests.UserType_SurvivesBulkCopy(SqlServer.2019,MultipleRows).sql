-- SqlServer.2008
DELETE [t1]
FROM
	[l2dbnh_payment] [t1]


-- SqlServer.2008
INSERT INTO [l2dbnh_payment]
(
	[paymentid],
	[amount],
	[priority]
)
VALUES
(11,1.25,N'H'),
(12,2.5,N'L')


select payment0_.paymentid as paymentid1_37_, payment0_.amount as amount2_37_, payment0_.priority as priority3_37_ from l2dbnh_payment payment0_ order by payment0_.paymentid asc

