# Todo API

![CI Pipeline](https://github.com/educasti/todo-api/actions/workflows/ci.yml/badge.svg)

API REST para gestión de tareas construida con Node.js y Express.

## Endpoints

- `GET /health` — estado del servidor
- `GET /tasks` — listar todas las tareas
- `GET /tasks/:id` — buscar tarea por ID
- `POST /tasks` — crear tarea nueva

## Desarrollo
```bash
npm install
npm run dev
```

## Tests
```bash
npm test
```