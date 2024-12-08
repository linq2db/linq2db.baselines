(250650) SELECT 
	t250650.Id = t250649.Id
FROM [DctSetpointtype(250649)] as t250649 (spt)
		LEFT JOIN (
			[VWellTree(250652)] as t250652 (t2)
				INNER JOIN [DctOu(250654)] as t250654 (tp2) ON ({t250652.ShopId?}? = {t250654.Id})
				LEFT JOIN [UacUsersDatagroup(250657)] as t250657 (cudg) ON ({t250654.Id} = {t250657.DatagroupId} AND {t250657.UserId} = 150)
				LEFT JOIN [UacUsersDatagroup(250662)] as t250662 (oudg) ON ({t250654.ParentId?}? = {t250662.DatagroupId} AND {t250662.UserId} = 150 AND {t250662.Inheritablepermission} > 0)
				INNER JOIN [Deviation(250682)] as t250682 (d) ON ({t250652.WellId?}? = {t250682.WellId})
		)  ON ({t250682.SetpointtypeId} = {t250649.Id} AND {UTILS.GREATESTNOTNULL3(CAST(t250657.Permission AS (System.Nullable`1[System.Decimal], Decimal, "38", "17")), CAST(t250662.Inheritablepermission AS (System.Nullable`1[System.Decimal], Decimal, "38", "17")), NULL)?}? IS NOT NULL)
