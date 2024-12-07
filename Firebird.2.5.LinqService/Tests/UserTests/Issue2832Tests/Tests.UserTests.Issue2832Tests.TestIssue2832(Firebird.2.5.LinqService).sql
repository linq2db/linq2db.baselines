(159610) SELECT 
	t159610.Id = t159609.Id
FROM [DctSetpointtype(159609)] as t159609 (spt)
		LEFT JOIN (
			[VWellTree(159612)] as t159612 (t2)
				INNER JOIN [DctOu(159614)] as t159614 (tp2) ON ({t159612.ShopId?}? = {t159614.Id})
				LEFT JOIN [UacUsersDatagroup(159617)] as t159617 (cudg) ON ({t159614.Id} = {t159617.DatagroupId} AND {t159617.UserId} = 150)
				LEFT JOIN [UacUsersDatagroup(159622)] as t159622 (oudg) ON ({t159614.ParentId?}? = {t159622.DatagroupId} AND {t159622.UserId} = 150 AND {t159622.Inheritablepermission} > 0)
				INNER JOIN [Deviation(159642)] as t159642 (d) ON ({t159612.WellId?}? = {t159642.WellId})
		)  ON ({t159642.SetpointtypeId} = {t159609.Id} AND {UTILS.GREATESTNOTNULL3(CAST(t159617.Permission AS (System.Nullable`1[System.Decimal], Decimal, "18", "10")), CAST(t159622.Inheritablepermission AS (System.Nullable`1[System.Decimal], Decimal, "18", "10")), NULL)?}? IS NOT NULL)
