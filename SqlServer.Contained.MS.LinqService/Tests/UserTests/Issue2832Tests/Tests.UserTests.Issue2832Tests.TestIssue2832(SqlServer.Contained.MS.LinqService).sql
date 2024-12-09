(501063) SELECT 
	t501063.Id = t501062.Id
FROM [DctSetpointtype(501062)] as t501062 (spt)
		LEFT JOIN (
			[VWellTree(501065)] as t501065 (t2)
				INNER JOIN [DctOu(501067)] as t501067 (tp2) ON ({t501065.ShopId?}? = {t501067.Id})
				LEFT JOIN [UacUsersDatagroup(501070)] as t501070 (cudg) ON ({t501067.Id} = {t501070.DatagroupId} AND {t501070.UserId} = 150)
				LEFT JOIN [UacUsersDatagroup(501075)] as t501075 (oudg) ON ({t501067.ParentId?}? = {t501075.DatagroupId} AND {t501075.UserId} = 150 AND {t501075.Inheritablepermission} > 0)
				INNER JOIN [Deviation(501095)] as t501095 (d) ON ({t501065.WellId?}? = {t501095.WellId})
		)  ON ({t501095.SetpointtypeId} = {t501062.Id} AND {UTILS.GREATESTNOTNULL3(CAST(t501070.Permission AS (System.Nullable`1[System.Decimal], Decimal)), CAST(t501075.Inheritablepermission AS (System.Nullable`1[System.Decimal], Decimal)), NULL)?}? IS NOT NULL)
