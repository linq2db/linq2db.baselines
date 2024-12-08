(249304) SELECT 
	t249304.Id = t249303.Id
FROM [DctSetpointtype(249303)] as t249303 (spt)
		LEFT JOIN (
			[VWellTree(249306)] as t249306 (t2)
				INNER JOIN [DctOu(249308)] as t249308 (tp2) ON ({t249306.ShopId?}? = {t249308.Id})
				LEFT JOIN [UacUsersDatagroup(249311)] as t249311 (cudg) ON ({t249308.Id} = {t249311.DatagroupId} AND {t249311.UserId} = 150)
				LEFT JOIN [UacUsersDatagroup(249316)] as t249316 (oudg) ON ({t249308.ParentId?}? = {t249316.DatagroupId} AND {t249316.UserId} = 150 AND {t249316.Inheritablepermission} > 0)
				INNER JOIN [Deviation(249336)] as t249336 (d) ON ({t249306.WellId?}? = {t249336.WellId})
		)  ON ({t249336.SetpointtypeId} = {t249303.Id} AND {UTILS.GREATESTNOTNULL3(CAST(t249311.Permission AS (System.Nullable`1[System.Decimal], Decimal, "38", "17")), CAST(t249316.Inheritablepermission AS (System.Nullable`1[System.Decimal], Decimal, "38", "17")), NULL)?}? IS NOT NULL)
