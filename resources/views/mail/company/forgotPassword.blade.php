<!DOCTYPE html>
<html>
<head>
    <title>Recover Password</title>
</head>
<body>
    <h1>{{ $details['name'] }}</h1>
    <a href="{{ env('APP_URL') }}/company/recover-password/{{ $details['number'] }}" >{{ env('APP_URL') }}/company/recover-password/{{ $details['number'] }}</a>
</body>
</html>
