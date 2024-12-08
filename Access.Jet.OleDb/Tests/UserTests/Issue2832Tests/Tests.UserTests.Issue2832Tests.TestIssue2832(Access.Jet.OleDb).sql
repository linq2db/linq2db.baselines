(307196) SELECT 
	t307196.Id = t307195.Id
FROM [DctSetpointtype(307195)] as t307195 (spt)
		LEFT JOIN (
			(307232) SELECT 
				t307232.SetpointtypeId = t307228.SetpointtypeId
			FROM [VWellTree(307198)] as t307198 (t2)
					INNER JOIN [DctOu(307200)] as t307200 (tp2) ON ({t307198.ShopId?}? = {t307200.Id})
					LEFT JOIN [UacUsersDatagroup(307203)] as t307203 (cudg) ON ({t307200.Id} = {t307203.DatagroupId} AND {t307203.UserId} = 150)
					LEFT JOIN [UacUsersDatagroup(307208)] as t307208 (oudg) ON ({t307200.ParentId?}? = {t307208.DatagroupId} AND {t307208.UserId} = 150 AND {t307208.Inheritablepermission} > 0)
					INNER JOIN [Deviation(307228)] as t307228 (d) ON ({t307198.WellId?}? = {t307228.WellId})
			WHERE
				({UTILS.GREATESTNOTNULL3(t307203.Permission, t307208.Inheritablepermission, NULL)?}? IS NOT NULL)
		) as t307232 (t2_1) ON ({t307232.SetpointtypeId?} = {t307195.Id})
