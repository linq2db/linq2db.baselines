(218654) SELECT 
	t218654.Id = t218653.Id
FROM [DctSetpointtype(218653)] as t218653 (spt)
		LEFT JOIN (
			[VWellTree(218656)] as t218656 (t2)
				INNER JOIN [DctOu(218658)] as t218658 (tp2) ON ({t218656.ShopId?}? = {t218658.Id})
				LEFT JOIN [UacUsersDatagroup(218661)] as t218661 (cudg) ON ({t218658.Id} = {t218661.DatagroupId} AND {t218661.UserId} = 150)
				LEFT JOIN [UacUsersDatagroup(218666)] as t218666 (oudg) ON ({t218658.ParentId?}? = {t218666.DatagroupId} AND {t218666.UserId} = 150 AND {t218666.Inheritablepermission} > 0)
				INNER JOIN [Deviation(218686)] as t218686 (d) ON ({t218656.WellId?}? = {t218686.WellId})
		)  ON ({t218686.SetpointtypeId} = {t218653.Id} AND {UTILS.GREATESTNOTNULL3(CAST(t218661.Permission AS (System.Nullable`1[System.Decimal], Decimal, "38", "17")), CAST(t218666.Inheritablepermission AS (System.Nullable`1[System.Decimal], Decimal, "38", "17")), NULL)?}? IS NOT NULL)
