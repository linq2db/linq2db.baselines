(106014) SELECT 
	t106014.Id = t106013.Id
FROM [DctSetpointtype(106013)] as t106013 (spt)
		LEFT JOIN (
			[VWellTree(106016)] as t106016 (t2)
				INNER JOIN [DctOu(106018)] as t106018 (tp2) ON ({t106016.ShopId?}? = {t106018.Id})
				LEFT JOIN [UacUsersDatagroup(106021)] as t106021 (cudg) ON ({t106018.Id} = {t106021.DatagroupId} AND {t106021.UserId} = 150)
				LEFT JOIN [UacUsersDatagroup(106026)] as t106026 (oudg) ON ({t106018.ParentId?}? = {t106026.DatagroupId} AND {t106026.UserId} = 150 AND {t106026.Inheritablepermission} > 0)
				INNER JOIN [Deviation(106046)] as t106046 (d) ON ({t106016.WellId?}? = {t106046.WellId})
		)  ON ({t106046.SetpointtypeId} = {t106013.Id} AND {UTILS.GREATESTNOTNULL3(CAST(t106021.Permission AS (System.Nullable`1[System.Decimal], Decimal)), CAST(t106026.Inheritablepermission AS (System.Nullable`1[System.Decimal], Decimal)), NULL)?}? IS NOT NULL)
