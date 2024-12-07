(159571) SELECT 
	t159571.Id = t159570.Id
FROM [DctSetpointtype(159570)] as t159570 (spt)
		LEFT JOIN (
			[VWellTree(159573)] as t159573 (t2)
				INNER JOIN [DctOu(159575)] as t159575 (tp2) ON ({t159573.ShopId?}? = {t159575.Id})
				LEFT JOIN [UacUsersDatagroup(159578)] as t159578 (cudg) ON ({t159575.Id} = {t159578.DatagroupId} AND {t159578.UserId} = 150)
				LEFT JOIN [UacUsersDatagroup(159583)] as t159583 (oudg) ON ({t159575.ParentId?}? = {t159583.DatagroupId} AND {t159583.UserId} = 150 AND {t159583.Inheritablepermission} > 0)
				INNER JOIN [Deviation(159603)] as t159603 (d) ON ({t159573.WellId?}? = {t159603.WellId})
		)  ON ({t159603.SetpointtypeId} = {t159570.Id} AND {UTILS.GREATESTNOTNULL3(CAST(t159578.Permission AS (System.Nullable`1[System.Decimal], Decimal, "18", "10")), CAST(t159583.Inheritablepermission AS (System.Nullable`1[System.Decimal], Decimal, "18", "10")), NULL)?}? IS NOT NULL)
