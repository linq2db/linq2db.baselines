(218732) SELECT 
	t218732.Id = t218731.Id
FROM [DctSetpointtype(218731)] as t218731 (spt)
		LEFT JOIN (
			[VWellTree(218734)] as t218734 (t2)
				INNER JOIN [DctOu(218736)] as t218736 (tp2) ON ({t218734.ShopId?}? = {t218736.Id})
				LEFT JOIN [UacUsersDatagroup(218739)] as t218739 (cudg) ON ({t218736.Id} = {t218739.DatagroupId} AND {t218739.UserId} = 150)
				LEFT JOIN [UacUsersDatagroup(218744)] as t218744 (oudg) ON ({t218736.ParentId?}? = {t218744.DatagroupId} AND {t218744.UserId} = 150 AND {t218744.Inheritablepermission} > 0)
				INNER JOIN [Deviation(218764)] as t218764 (d) ON ({t218734.WellId?}? = {t218764.WellId})
		)  ON ({t218764.SetpointtypeId} = {t218731.Id} AND {UTILS.GREATESTNOTNULL3(CAST(t218739.Permission AS (System.Nullable`1[System.Decimal], Decimal)), CAST(t218744.Inheritablepermission AS (System.Nullable`1[System.Decimal], Decimal)), NULL)?}? IS NOT NULL)
