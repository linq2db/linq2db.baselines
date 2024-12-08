(701018) SELECT 
	t701018.Id = t701017.Id
FROM [DctSetpointtype(701017)] as t701017 (spt)
		LEFT JOIN (
			[VWellTree(701020)] as t701020 (t2)
				INNER JOIN [DctOu(701022)] as t701022 (tp2) ON ({t701020.ShopId?}? = {t701022.Id})
				LEFT JOIN [UacUsersDatagroup(701025)] as t701025 (cudg) ON ({t701022.Id} = {t701025.DatagroupId} AND {t701025.UserId} = 150)
				LEFT JOIN [UacUsersDatagroup(701030)] as t701030 (oudg) ON ({t701022.ParentId?}? = {t701030.DatagroupId} AND {t701030.UserId} = 150 AND {t701030.Inheritablepermission} > 0)
				INNER JOIN [Deviation(701050)] as t701050 (d) ON ({t701020.WellId?}? = {t701050.WellId})
		)  ON ({t701050.SetpointtypeId} = {t701017.Id} AND {UTILS.GREATESTNOTNULL3(CAST(t701025.Permission AS (System.Nullable`1[System.Decimal], Decimal)), CAST(t701030.Inheritablepermission AS (System.Nullable`1[System.Decimal], Decimal)), NULL)?}? IS NOT NULL)
