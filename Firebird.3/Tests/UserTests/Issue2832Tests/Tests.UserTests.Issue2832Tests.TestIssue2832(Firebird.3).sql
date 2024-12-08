(159445) SELECT 
	t159445.Id = t159444.Id
FROM [DctSetpointtype(159444)] as t159444 (spt)
		LEFT JOIN (
			[VWellTree(159447)] as t159447 (t2)
				INNER JOIN [DctOu(159449)] as t159449 (tp2) ON ({t159447.ShopId?}? = {t159449.Id})
				LEFT JOIN [UacUsersDatagroup(159452)] as t159452 (cudg) ON ({t159449.Id} = {t159452.DatagroupId} AND {t159452.UserId} = 150)
				LEFT JOIN [UacUsersDatagroup(159457)] as t159457 (oudg) ON ({t159449.ParentId?}? = {t159457.DatagroupId} AND {t159457.UserId} = 150 AND {t159457.Inheritablepermission} > 0)
				INNER JOIN [Deviation(159477)] as t159477 (d) ON ({t159447.WellId?}? = {t159477.WellId})
		)  ON ({t159477.SetpointtypeId} = {t159444.Id} AND {UTILS.GREATESTNOTNULL3(CAST(t159452.Permission AS (System.Nullable`1[System.Decimal], Decimal, "18", "10")), CAST(t159457.Inheritablepermission AS (System.Nullable`1[System.Decimal], Decimal, "18", "10")), NULL)?}? IS NOT NULL)
