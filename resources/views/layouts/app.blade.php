<!doctype html>
<html lang="{{ str_replace('_', '-', app()->getLocale()) }}">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- CSRF Token -->
    <meta name="csrf-token" content="{{ csrf_token() }}">

    <title>{{ config('app.name', 'InternshipStudentsRecruitmentSystem') }}</title>

    <!-- Scripts -->
    <script src="{{ asset('js/app.js') }}" defer></script>

    <!-- Fonts -->
    <link rel="dns-prefetch" href="//fonts.gstatic.com">
    <link href="https://fonts.googleapis.com/css?family=Nunito" rel="stylesheet">

    <!-- Styles -->
    <link href="{{ asset('css/app.css') }}" rel="stylesheet"><!-- Styles -->
</head>
<body>
    <div id="app">
        <nav class="navbar navbar-expand-md navbar-light bg-light shadow-sm">
            <a class="navbar-brand title-name" href="{{ url('/') }}">
            <img src="{{asset('img/titlelogo.png')}}" alt="" width="40px" height="40px">  {{ 'InternshipStudentsRecruitmentSystem' }}
            </a>
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="{{ __('Toggle navigation') }}">
                <span class="navbar-toggler-icon"></span>
            </button>

            <div class="collapse navbar-collapse nav-title" id="navbarSupportedContent">
                <!-- Left Side Of Navbar -->
                <ul class="navbar-nav me-auto">
                    <li class="nav-item">
                        <a class="nav-link {{ request()->is('/')||request()->is('home')? 'active' : '' }}" href="{{ url('/') }}">{{ __('app_menu.Home') }}</a>
                    </li>
                    @if(Auth::user())
                        <li class="nav-item">
                            <a class="nav-link" href="{{ route('login') }}">{{ __('Profile') }}</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="{{ route('login') }}">{{ __('app_menu.Company List') }}</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="{{ route('login') }}">{{ __('IQ Test') }}</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="{{ route('login') }}">{{ __('Interview') }}</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="{{ route('login') }}">{{ __('Internship Alert') }}</a>
                        </li>
                    @endif
                    <li class="nav-item">
                        <a class="nav-link" href="{{ url('/locale/en') }}">{{ __('app_menu.About us') }}</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="{{ url('/locale/mm') }}">{{ __('app_menu.Contact') }}</a>
                    </li>
                    <!-- <li class="nav-item">
                        <select class="btn  nav-link language-select" name="dropdown" id="dropdown" onchange="window.location=this.value;">
                            <option >{{ __('app_menu.Language') }}</option>
                            <option value="{{ url('/locale/en') }}">English</option>
                            <option value="{{ url('/locale/mm') }}">မြန်မာ</option>
                            <option @if(app()->getLocale() === 'en'){{__('selected')}} @endif  value="{{ url('/locale/en') }}">en</option>
                            <option @if(app()->getLocale() === 'mm'){{__('selected')}} @endif value="{{ url('/locale/mm') }}">mm</option>
                        </select>
                    </li> -->
                    <li class="nav-item dropdown">
                        <a id="navbarDropdown" class="nav-link dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown" aria-haspopup="true" aria-expanded="false" v-pre>
                        @if(app()->getLocale() === 'en')
                            <img src="{{asset('img/en.png')}}" alt="" width="20px" height="15px">
                        @else
                            <img src="{{asset('img/mm.png')}}" alt="" width="20px" height="15px">
                        @endif
                        {{ __('app_menu.Language') }}
                        </a>

                        <div class="dropdown-menu dropdown-menu-end" aria-labelledby="navbarDropdown">
                            <a class="dropdown-item" href="{{ url('/locale/en') }}"
                                onclick="event.preventDefault(); 
                                document.getElementById('language-en-form).submit();">
                                <img src="{{asset('img/en.png')}}" alt="" width="20px" height="15px"> {{ __('English') }}
                            </a>
                            <a class="dropdown-item" href="{{ url('/locale/mm') }}"
                                onclick="event.preventDefault(); 
                                document.getElementById('language-mm-form).submit();">
                                <img src="{{asset('img/mm.png')}}" alt="" width="20px" height="15px"> {{ __('မြန်မာ') }}
                            </a>

                            <form id="language-en-form" action="{{ url('/locale/en') }}" method="POST" class="d-none">
                                @csrf
                            </form>
                            <form id="language-mm-form" action="{{ url('/locale/mm') }}" method="POST" class="d-none">
                                @csrf
                            </form>
                        </div>
                    </li>
                </ul>

                <!-- Right Side Of Navbar -->
                <ul class="navbar-nav ms-auto nav-title">
                    <!-- Authentication Links -->
                    @guest
                        @if (Route::has('login'))
                            <li class="nav-item">
                                <a class="nav-link" href="{{ route('login') }}">{{ __('app_menu.Login') }}</a>
                            </li>
                        @endif

                        @if (Route::has('register'))
                            <li class="nav-item">
                                <a class="nav-link" href="{{ route('register') }}">{{ __('app_menu.Register') }}</a>
                            </li>
                        @endif
                    @else
                        <li class="nav-item dropdown">
                            <a id="navbarDropdown" class="nav-link dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown" aria-haspopup="true" aria-expanded="false" v-pre>
                                {{ Auth::user()->name }}
                            </a>

                            <div class="dropdown-menu dropdown-menu-end" aria-labelledby="navbarDropdown">
                                <a class="dropdown-item" href="{{ route('logout') }}"
                                    onclick="event.preventDefault();
                                                    document.getElementById('logout-form').submit();">
                                    {{ __('app_menu.Logout') }}
                                </a>
                                <form id="logout-form" action="{{ route('logout') }}" method="POST" class="d-none">
                                    @csrf
                                </form>
                            </div>
                        </li>
                    @endguest
                </ul>
            </div>
        </nav>
        <main class="py-4">
            @yield('content')
        </main>
    </div>
</body>
</html>
