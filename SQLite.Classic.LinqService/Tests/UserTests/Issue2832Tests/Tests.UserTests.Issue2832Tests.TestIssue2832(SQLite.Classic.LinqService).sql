(701135) SELECT 
	t701135.Id = t701134.Id
FROM [DctSetpointtype(701134)] as t701134 (spt)
		LEFT JOIN (
			[VWellTree(701137)] as t701137 (t2)
				INNER JOIN [DctOu(701139)] as t701139 (tp2) ON ({t701137.ShopId?}? = {t701139.Id})
				LEFT JOIN [UacUsersDatagroup(701142)] as t701142 (cudg) ON ({t701139.Id} = {t701142.DatagroupId} AND {t701142.UserId} = 150)
				LEFT JOIN [UacUsersDatagroup(701147)] as t701147 (oudg) ON ({t701139.ParentId?}? = {t701147.DatagroupId} AND {t701147.UserId} = 150 AND {t701147.Inheritablepermission} > 0)
				INNER JOIN [Deviation(701167)] as t701167 (d) ON ({t701137.WellId?}? = {t701167.WellId})
		)  ON ({t701167.SetpointtypeId} = {t701134.Id} AND {UTILS.GREATESTNOTNULL3(CAST(t701142.Permission AS (System.Nullable`1[System.Decimal], Decimal)), CAST(t701147.Inheritablepermission AS (System.Nullable`1[System.Decimal], Decimal)), NULL)?}? IS NOT NULL)
