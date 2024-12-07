(217204) SELECT 
	t217204.Id = t217203.Id
FROM [DctSetpointtype(217203)] as t217203 (spt)
		LEFT JOIN (
			[VWellTree(217206)] as t217206 (t2)
				INNER JOIN [DctOu(217208)] as t217208 (tp2) ON ({t217206.ShopId?}? = {t217208.Id})
				LEFT JOIN [UacUsersDatagroup(217211)] as t217211 (cudg) ON ({t217208.Id} = {t217211.DatagroupId} AND {t217211.UserId} = 150)
				LEFT JOIN [UacUsersDatagroup(217216)] as t217216 (oudg) ON ({t217208.ParentId?}? = {t217216.DatagroupId} AND {t217216.UserId} = 150 AND {t217216.Inheritablepermission} > 0)
				INNER JOIN [Deviation(217236)] as t217236 (d) ON ({t217206.WellId?}? = {t217236.WellId})
		)  ON ({t217236.SetpointtypeId} = {t217203.Id} AND {UTILS.GREATESTNOTNULL3(CAST(t217211.Permission AS (System.Nullable`1[System.Decimal], Decimal)), CAST(t217216.Inheritablepermission AS (System.Nullable`1[System.Decimal], Decimal)), NULL)?}? IS NOT NULL)
