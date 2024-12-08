(701176) SELECT 
	t701176.Id = t701175.Id
FROM [DctSetpointtype(701175)] as t701175 (spt)
		LEFT JOIN (
			[VWellTree(701178)] as t701178 (t2)
				INNER JOIN [DctOu(701180)] as t701180 (tp2) ON ({t701178.ShopId?}? = {t701180.Id})
				LEFT JOIN [UacUsersDatagroup(701183)] as t701183 (cudg) ON ({t701180.Id} = {t701183.DatagroupId} AND {t701183.UserId} = 150)
				LEFT JOIN [UacUsersDatagroup(701188)] as t701188 (oudg) ON ({t701180.ParentId?}? = {t701188.DatagroupId} AND {t701188.UserId} = 150 AND {t701188.Inheritablepermission} > 0)
				INNER JOIN [Deviation(701208)] as t701208 (d) ON ({t701178.WellId?}? = {t701208.WellId})
		)  ON ({t701208.SetpointtypeId} = {t701175.Id} AND {UTILS.GREATESTNOTNULL3(CAST(t701183.Permission AS (System.Nullable`1[System.Decimal], Decimal)), CAST(t701188.Inheritablepermission AS (System.Nullable`1[System.Decimal], Decimal)), NULL)?}? IS NOT NULL)
