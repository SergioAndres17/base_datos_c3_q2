SELECT 
    r.name AS rol,
    r.code AS rol_codigo,
    m.name AS modulo,
    m.path AS paquete,
    v.name AS vista,
    v.path AS ruta
FROM 
    role r
JOIN 
    role_module rm ON r.id = rm.role_id AND r.state = 1 AND rm.state = 1
JOIN 
    module m ON rm.module_id = m.id AND m.state = 1
JOIN 
    module_view mv ON m.id = mv.module_id AND mv.state = 1
JOIN 
    view v ON mv.view_id = v.id AND v.state = 1
ORDER BY 
    r.name, m.name, v.name;