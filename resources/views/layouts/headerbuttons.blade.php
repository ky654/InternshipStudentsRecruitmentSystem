<header>
    <div class="btn-header">
        <ul>
            <li class="float-left">
                <a class="btn btn-primary {{ request()->is('/')? 'active' : '' }}" href="{{ url('/') }}" role="button">Weather</a>
            </li>
            <li class="float-left">
                <a class="btn btn-primary {{ request()->is('articles') ? 'active' : '' }}" href="{{ url('/articles') }}" role="button">Users List</a>
            </li>
            <li class="float-left">
                <a class="btn btn-primary {{ request()->is('users') ? 'active' : '' }}" href="{{ url('/users') }}" role="button">News</a>
            </li>
            <li class="float-left">
                <a class="btn btn-primary {{ request()->is('doanddonot') ? 'active' : '' }}" href="#" role="button">Crop Price</a>
            </li>
            <li class="float-left">
                <a class="btn btn-primary {{ request()->is('doanddonot') ? 'active' : '' }}" href="#" role="button">Products</a>
            </li>
            <li class="float-left">
                <a class="btn btn-primary {{ request()->is('doanddonot') ? 'active' : '' }}" href="#" role="button">Appointments</a>
            </li>
            <li class="float-left">
                <a class="btn btn-primary {{ request()->is('doanddonot') ? 'active' : '' }}" href="#" role="button">Schedule</a>
            </li>
            <li class="float-left">
                <a class="btn btn-primary {{ request()->is('doanddonot') ? 'active' : '' }}" href="#" role="button">FAQ
                </a>
            </li>
            <li class="float-left">
                <a class="btn btn-primary {{ request()->is('doanddonot') ? 'active' : '' }}" href="#" role="button">Do&Don't</a>
            </li>
        </ul>
    </div>
</header>
