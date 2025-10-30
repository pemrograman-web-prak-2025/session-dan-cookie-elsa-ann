<!DOCTYPE html>
<html lang="id">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Login Admin | ASEAN Dictionary</title>
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<body class="bg-light d-flex align-items-center justify-content-center" style="height:100vh;">
  <div class="card shadow p-4" style="width: 350px;">
    <h4 class="text-center mb-4">Login Admin</h4>

    @if ($errors->any())
      <div class="alert alert-danger">
        {{ $errors->first() }}
      </div>
    @endif

    <form action="{{ route('login.process') }}" method="POST">
      @csrf
      <div class="mb-3">
        <label>Username</label>
        <input type="text" name="username" class="form-control" required>
      </div>

      <div class="mb-3">
        <label>Password</label>
        <input type="password" name="password" class="form-control" required>
      </div>

      <div class="form-check mt-2">
        <input type="checkbox" class="form-check-input" id="remember" name="remember">
        <label class="form-check-label" for="remember">Ingat saya</label>
      </div>
    
      <button class="btn btn-primary w-100">Login</button>
      <p>Belum punya akun? <a href="{{ route('register.form') }}">Daftar di sini</a></p>
    </form>
  </div>
</body>
</html>
