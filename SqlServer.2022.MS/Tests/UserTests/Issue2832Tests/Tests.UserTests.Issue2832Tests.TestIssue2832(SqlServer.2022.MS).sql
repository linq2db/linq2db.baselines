(249343) SELECT 
	t249343.Id = t249342.Id
FROM [DctSetpointtype(249342)] as t249342 (spt)
		LEFT JOIN (
			[VWellTree(249345)] as t249345 (t2)
				INNER JOIN [DctOu(249347)] as t249347 (tp2) ON ({t249345.ShopId?}? = {t249347.Id})
				LEFT JOIN [UacUsersDatagroup(249350)] as t249350 (cudg) ON ({t249347.Id} = {t249350.DatagroupId} AND {t249350.UserId} = 150)
				LEFT JOIN [UacUsersDatagroup(249355)] as t249355 (oudg) ON ({t249347.ParentId?}? = {t249355.DatagroupId} AND {t249355.UserId} = 150 AND {t249355.Inheritablepermission} > 0)
				INNER JOIN [Deviation(249375)] as t249375 (d) ON ({t249345.WellId?}? = {t249375.WellId})
		)  ON ({t249375.SetpointtypeId} = {t249342.Id} AND {UTILS.GREATESTNOTNULL3(CAST(t249350.Permission AS (System.Nullable`1[System.Decimal], Decimal, "38", "17")), CAST(t249355.Inheritablepermission AS (System.Nullable`1[System.Decimal], Decimal, "38", "17")), NULL)?}? IS NOT NULL)
